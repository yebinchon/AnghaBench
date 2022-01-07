
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {int mst_m; int ctmt; int timer; } ;
struct TYPE_4__ {TYPE_1__ hfcD; } ;
struct IsdnCardState {int debug; int lock; TYPE_2__ hw; int (* BC_Write_Reg ) (struct IsdnCardState*,int ,int ,int ) ;} ;






 int HFCD_CTMT ;
 int HFCD_DATA ;
 int HFCD_MST_MODE ;
 int HFCD_TIM800 ;
 int HZ ;
 int L1_DEB_ISAC ;
 int debugl1 (struct IsdnCardState*,char*,int) ;
 int init2bds0 (struct IsdnCardState*) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 int msleep (int) ;
 int release_io_hfcs (struct IsdnCardState*) ;
 int reset_hfcs (struct IsdnCardState*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int stub1 (struct IsdnCardState*,int ,int ,int ) ;
 int stub2 (struct IsdnCardState*,int ,int ,int ) ;

__attribute__((used)) static int
hfcs_card_msg(struct IsdnCardState *cs, int mt, void *arg)
{
 u_long flags;
 int delay;

 if (cs->debug & L1_DEB_ISAC)
  debugl1(cs, "HFCS: card_msg %x", mt);
 switch (mt) {
  case 129:
   spin_lock_irqsave(&cs->lock, flags);
   reset_hfcs(cs);
   spin_unlock_irqrestore(&cs->lock, flags);
   return(0);
  case 130:
   release_io_hfcs(cs);
   return(0);
  case 131:
   delay = (75*HZ)/100 +1;
   mod_timer(&cs->hw.hfcD.timer, jiffies + delay);
   spin_lock_irqsave(&cs->lock, flags);
   reset_hfcs(cs);
   init2bds0(cs);
   spin_unlock_irqrestore(&cs->lock, flags);
   delay = (80*HZ)/1000 +1;
   msleep(80);
   spin_lock_irqsave(&cs->lock, flags);
   cs->hw.hfcD.ctmt |= HFCD_TIM800;
   cs->BC_Write_Reg(cs, HFCD_DATA, HFCD_CTMT, cs->hw.hfcD.ctmt);
   cs->BC_Write_Reg(cs, HFCD_DATA, HFCD_MST_MODE, cs->hw.hfcD.mst_m);
   spin_unlock_irqrestore(&cs->lock, flags);
   return(0);
  case 128:
   return(0);
 }
 return(0);
}
