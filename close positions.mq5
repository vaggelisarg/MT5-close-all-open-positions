#include<Trade\Trade.mqh>
CTrade trade;

//MqlDateTime mdt;
//datetime dtSer=TimeCurrent(mdt);
//TimeCurrent(mdt);

//datetime current_time = TimeCurrent();

void OnTick()
{
   MqlDateTime mdt;
   datetime dtSer=TimeCurrent(mdt);
   Print(mdt.hour);
   
   if ( (mdt.sec==58 && mdt.min==29) || (mdt.sec==58 ))
   {
     Print(mdt.sec);
     CloseAllPositions(); 
     }
   }


void CloseAllPositions()
{


   for (int i=PositionsTotal()-1; i>=0; i--)
   {
   
   ulong ticket = PositionGetTicket(i);
   trade.PositionClose(ticket);
   
   }
   
 }
//+------------------------------------------------------------------+
