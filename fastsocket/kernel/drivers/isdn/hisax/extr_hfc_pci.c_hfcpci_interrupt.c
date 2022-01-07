
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_long ;
typedef int u_char ;
struct TYPE_8__ {int int_m2; int int_m1; scalar_t__ nt_timer; int ctmt; int int_s1; scalar_t__ bswapped; scalar_t__ nt_mode; } ;
struct TYPE_9__ {TYPE_3__ hfcpci; } ;
struct TYPE_6__ {int ph_state; } ;
struct TYPE_7__ {TYPE_1__ hfcpci; } ;
struct IsdnCardState {int debug; int lock; TYPE_4__ hw; int HW_Flags; scalar_t__ tx_cnt; int sq; TYPE_5__* tx_skb; int dbusytimer; scalar_t__ logecho; TYPE_2__ dc; } ;
struct BCState {int channel; int squeue; void* tx_skb; } ;
typedef int irqreturn_t ;
struct TYPE_10__ {scalar_t__ len; } ;


 int B_XMTBUFREADY ;
 int D_CLEARBUSY ;
 int D_L1STATECHANGE ;
 int D_XMTBUFREADY ;
 int FLG_DBUSY_TIMER ;
 int FLG_L1_DBUSY ;
 int FLG_LOCK_ATOMIC ;
 int HFCPCI_ANYINT ;
 int HFCPCI_CLTIMER ;
 int HFCPCI_CTMT ;
 int HFCPCI_INT_S1 ;
 int HFCPCI_STATES ;
 int HFCPCI_STATUS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int L1_DEB_ISAC ;
 int Read_hfc (struct IsdnCardState*,int ) ;
 struct BCState* Sel_BCS (struct IsdnCardState*,int) ;
 int Write_hfc (struct IsdnCardState*,int ,int) ;
 int debugl1 (struct IsdnCardState*,char*,...) ;
 int del_timer (int *) ;
 int dev_kfree_skb_irq (TYPE_5__*) ;
 int hfcpci_fill_dfifo (struct IsdnCardState*) ;
 int hfcpci_fill_fifo (struct BCState*) ;
 int hfcpci_sched_event (struct BCState*,int ) ;
 int main_rec_hfcpci (struct BCState*) ;
 int receive_dmsg (struct IsdnCardState*) ;
 int receive_emsg (struct IsdnCardState*) ;
 int sched_event_D_pci (struct IsdnCardState*,int ) ;
 void* skb_dequeue (int *) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static irqreturn_t
hfcpci_interrupt(int intno, void *dev_id)
{
 u_long flags;
 struct IsdnCardState *cs = dev_id;
 u_char exval;
 struct BCState *bcs;
 int count = 15;
 u_char val, stat;

 if (!(cs->hw.hfcpci.int_m2 & 0x08)) {
  debugl1(cs, "HFC-PCI: int_m2 %x not initialised", cs->hw.hfcpci.int_m2);
  return IRQ_NONE;
 }
 spin_lock_irqsave(&cs->lock, flags);
 if (HFCPCI_ANYINT & (stat = Read_hfc(cs, HFCPCI_STATUS))) {
  val = Read_hfc(cs, HFCPCI_INT_S1);
  if (cs->debug & L1_DEB_ISAC)
   debugl1(cs, "HFC-PCI: stat(%02x) s1(%02x)", stat, val);
 } else {
  spin_unlock_irqrestore(&cs->lock, flags);
  return IRQ_NONE;
 }
 if (cs->debug & L1_DEB_ISAC)
  debugl1(cs, "HFC-PCI irq %x %s", val,
   test_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags) ?
   "locked" : "unlocked");
 val &= cs->hw.hfcpci.int_m1;
 if (val & 0x40) {
  exval = Read_hfc(cs, HFCPCI_STATES) & 0xf;
  if (cs->debug & L1_DEB_ISAC)
   debugl1(cs, "ph_state chg %d->%d", cs->dc.hfcpci.ph_state,
    exval);
  cs->dc.hfcpci.ph_state = exval;
  sched_event_D_pci(cs, D_L1STATECHANGE);
  val &= ~0x40;
 }
 if (val & 0x80) {
  if (cs->hw.hfcpci.nt_mode) {
   if ((--cs->hw.hfcpci.nt_timer) < 0)
    sched_event_D_pci(cs, D_L1STATECHANGE);
  }
  val &= ~0x80;
  Write_hfc(cs, HFCPCI_CTMT, cs->hw.hfcpci.ctmt | HFCPCI_CLTIMER);
 }
 while (val) {
  if (test_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
   cs->hw.hfcpci.int_s1 |= val;
   spin_unlock_irqrestore(&cs->lock, flags);
   return IRQ_HANDLED;
  }
  if (cs->hw.hfcpci.int_s1 & 0x18) {
   exval = val;
   val = cs->hw.hfcpci.int_s1;
   cs->hw.hfcpci.int_s1 = exval;
  }
  if (val & 0x08) {
   if (!(bcs = Sel_BCS(cs, cs->hw.hfcpci.bswapped ? 1 : 0))) {
    if (cs->debug)
     debugl1(cs, "hfcpci spurious 0x08 IRQ");
   } else
    main_rec_hfcpci(bcs);
  }
  if (val & 0x10) {
   if (cs->logecho)
    receive_emsg(cs);
   else if (!(bcs = Sel_BCS(cs, 1))) {
    if (cs->debug)
     debugl1(cs, "hfcpci spurious 0x10 IRQ");
   } else
    main_rec_hfcpci(bcs);
  }
  if (val & 0x01) {
   if (!(bcs = Sel_BCS(cs, cs->hw.hfcpci.bswapped ? 1 : 0))) {
    if (cs->debug)
     debugl1(cs, "hfcpci spurious 0x01 IRQ");
   } else {
    if (bcs->tx_skb) {
     if (!test_and_set_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
      hfcpci_fill_fifo(bcs);
      test_and_clear_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags);
     } else
      debugl1(cs, "fill_data %d blocked", bcs->channel);
    } else {
     if ((bcs->tx_skb = skb_dequeue(&bcs->squeue))) {
      if (!test_and_set_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
       hfcpci_fill_fifo(bcs);
       test_and_clear_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags);
      } else
       debugl1(cs, "fill_data %d blocked", bcs->channel);
     } else {
      hfcpci_sched_event(bcs, B_XMTBUFREADY);
     }
    }
   }
  }
  if (val & 0x02) {
   if (!(bcs = Sel_BCS(cs, 1))) {
    if (cs->debug)
     debugl1(cs, "hfcpci spurious 0x02 IRQ");
   } else {
    if (bcs->tx_skb) {
     if (!test_and_set_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
      hfcpci_fill_fifo(bcs);
      test_and_clear_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags);
     } else
      debugl1(cs, "fill_data %d blocked", bcs->channel);
    } else {
     if ((bcs->tx_skb = skb_dequeue(&bcs->squeue))) {
      if (!test_and_set_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
       hfcpci_fill_fifo(bcs);
       test_and_clear_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags);
      } else
       debugl1(cs, "fill_data %d blocked", bcs->channel);
     } else {
      hfcpci_sched_event(bcs, B_XMTBUFREADY);
     }
    }
   }
  }
  if (val & 0x20) {
   receive_dmsg(cs);
  }
  if (val & 0x04) {
   if (test_and_clear_bit(FLG_DBUSY_TIMER, &cs->HW_Flags))
    del_timer(&cs->dbusytimer);
   if (test_and_clear_bit(FLG_L1_DBUSY, &cs->HW_Flags))
    sched_event_D_pci(cs, D_CLEARBUSY);
   if (cs->tx_skb) {
    if (cs->tx_skb->len) {
     if (!test_and_set_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
      hfcpci_fill_dfifo(cs);
      test_and_clear_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags);
     } else {
      debugl1(cs, "hfcpci_fill_dfifo irq blocked");
     }
     goto afterXPR;
    } else {
     dev_kfree_skb_irq(cs->tx_skb);
     cs->tx_cnt = 0;
     cs->tx_skb = ((void*)0);
    }
   }
   if ((cs->tx_skb = skb_dequeue(&cs->sq))) {
    cs->tx_cnt = 0;
    if (!test_and_set_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
     hfcpci_fill_dfifo(cs);
     test_and_clear_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags);
    } else {
     debugl1(cs, "hfcpci_fill_dfifo irq blocked");
    }
   } else
    sched_event_D_pci(cs, D_XMTBUFREADY);
  }
       afterXPR:
  if (cs->hw.hfcpci.int_s1 && count--) {
   val = cs->hw.hfcpci.int_s1;
   cs->hw.hfcpci.int_s1 = 0;
   if (cs->debug & L1_DEB_ISAC)
    debugl1(cs, "HFC-PCI irq %x loop %d", val, 15 - count);
  } else
   val = 0;
 }
 spin_unlock_irqrestore(&cs->lock, flags);
 return IRQ_HANDLED;
}
