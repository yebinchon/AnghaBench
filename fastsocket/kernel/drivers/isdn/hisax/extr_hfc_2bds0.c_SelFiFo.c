
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int fifo; } ;
struct TYPE_4__ {TYPE_1__ hfcD; } ;
struct IsdnCardState {int (* BC_Write_Reg ) (struct IsdnCardState*,int ,int,int ) ;TYPE_2__ hw; } ;


 int HFCB_B1 ;
 int HFCB_B2 ;
 int HFCB_FIFO ;
 int HFCB_REC ;
 int HFCB_SEND ;
 int HFCB_Z1 ;
 int HFCD_DATA ;
 int HFCD_FIFO ;
 int HFCD_REC ;
 int HFCD_SEND ;
 int HFCD_Z1 ;
 int WaitForBusy (struct IsdnCardState*) ;
 int WaitNoBusy (struct IsdnCardState*) ;
 int debugl1 (struct IsdnCardState*,char*) ;
 int stub1 (struct IsdnCardState*,int ,int,int ) ;

__attribute__((used)) static int
SelFiFo(struct IsdnCardState *cs, u_char FiFo)
{
 u_char cip;

 if (cs->hw.hfcD.fifo == FiFo)
  return(1);
 switch(FiFo) {
  case 0: cip = HFCB_FIFO | HFCB_Z1 | HFCB_SEND | HFCB_B1;
   break;
  case 1: cip = HFCB_FIFO | HFCB_Z1 | HFCB_REC | HFCB_B1;
   break;
  case 2: cip = HFCB_FIFO | HFCB_Z1 | HFCB_SEND | HFCB_B2;
   break;
  case 3: cip = HFCB_FIFO | HFCB_Z1 | HFCB_REC | HFCB_B2;
   break;
  case 4: cip = HFCD_FIFO | HFCD_Z1 | HFCD_SEND;
   break;
  case 5: cip = HFCD_FIFO | HFCD_Z1 | HFCD_REC;
   break;
  default:
   debugl1(cs, "SelFiFo Error");
   return(0);
 }
 cs->hw.hfcD.fifo = FiFo;
 WaitNoBusy(cs);
 cs->BC_Write_Reg(cs, HFCD_DATA, cip, 0);
 WaitForBusy(cs);
 return(2);
}
