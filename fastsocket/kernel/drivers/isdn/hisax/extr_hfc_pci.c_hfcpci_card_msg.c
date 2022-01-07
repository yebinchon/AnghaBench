
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {int mst_m; int int_m1; } ;
struct TYPE_4__ {TYPE_1__ hfcpci; } ;
struct IsdnCardState {int debug; int lock; TYPE_2__ hw; } ;






 int HFCPCI_INTS_TIMER ;
 int HFCPCI_INT_M1 ;
 int HFCPCI_MST_MODE ;
 int L1_DEB_ISAC ;
 int Write_hfc (struct IsdnCardState*,int ,int ) ;
 int debugl1 (struct IsdnCardState*,char*,int) ;
 int inithfcpci (struct IsdnCardState*) ;
 int msleep (int) ;
 int release_io_hfcpci (struct IsdnCardState*) ;
 int reset_hfcpci (struct IsdnCardState*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static int
hfcpci_card_msg(struct IsdnCardState *cs, int mt, void *arg)
{
 u_long flags;

 if (cs->debug & L1_DEB_ISAC)
  debugl1(cs, "HFCPCI: card_msg %x", mt);
 switch (mt) {
  case 129:
   spin_lock_irqsave(&cs->lock, flags);
   reset_hfcpci(cs);
   spin_unlock_irqrestore(&cs->lock, flags);
   return (0);
  case 130:
   release_io_hfcpci(cs);
   return (0);
  case 131:
   spin_lock_irqsave(&cs->lock, flags);
   inithfcpci(cs);
   reset_hfcpci(cs);
   spin_unlock_irqrestore(&cs->lock, flags);
   msleep(80);

   spin_lock_irqsave(&cs->lock, flags);
   cs->hw.hfcpci.int_m1 &= ~HFCPCI_INTS_TIMER;
   Write_hfc(cs, HFCPCI_INT_M1, cs->hw.hfcpci.int_m1);

   Write_hfc(cs, HFCPCI_MST_MODE, cs->hw.hfcpci.mst_m);
   spin_unlock_irqrestore(&cs->lock, flags);
   return (0);
  case 128:
   return (0);
 }
 return (0);
}
