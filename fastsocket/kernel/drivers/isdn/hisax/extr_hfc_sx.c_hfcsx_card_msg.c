
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {int mst_m; int int_m1; } ;
struct TYPE_4__ {TYPE_1__ hfcsx; } ;
struct IsdnCardState {int debug; int lock; TYPE_2__ hw; } ;






 int HFCSX_INTS_TIMER ;
 int HFCSX_INT_M1 ;
 int HFCSX_MST_MODE ;
 int L1_DEB_ISAC ;
 int Write_hfc (struct IsdnCardState*,int ,int ) ;
 int debugl1 (struct IsdnCardState*,char*,int) ;
 int inithfcsx (struct IsdnCardState*) ;
 int msleep (int) ;
 int release_io_hfcsx (struct IsdnCardState*) ;
 int reset_hfcsx (struct IsdnCardState*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static int
hfcsx_card_msg(struct IsdnCardState *cs, int mt, void *arg)
{
 u_long flags;

 if (cs->debug & L1_DEB_ISAC)
  debugl1(cs, "HFCSX: card_msg %x", mt);
 switch (mt) {
  case 129:
   spin_lock_irqsave(&cs->lock, flags);
   reset_hfcsx(cs);
   spin_unlock_irqrestore(&cs->lock, flags);
   return (0);
  case 130:
   release_io_hfcsx(cs);
   return (0);
  case 131:
   spin_lock_irqsave(&cs->lock, flags);
   inithfcsx(cs);
   spin_unlock_irqrestore(&cs->lock, flags);
   msleep(80);

   spin_lock_irqsave(&cs->lock, flags);
   cs->hw.hfcsx.int_m1 &= ~HFCSX_INTS_TIMER;
   Write_hfc(cs, HFCSX_INT_M1, cs->hw.hfcsx.int_m1);

   Write_hfc(cs, HFCSX_MST_MODE, cs->hw.hfcsx.mst_m);
   spin_unlock_irqrestore(&cs->lock, flags);
   return (0);
  case 128:
   return (0);
 }
 return (0);
}
