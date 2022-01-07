
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_8__ {int int_m1; int int_s1; } ;
struct TYPE_9__ {TYPE_3__ hfcD; } ;
struct TYPE_6__ {int ph_state; } ;
struct TYPE_7__ {TYPE_1__ hfcd; } ;
struct IsdnCardState {int debug; int (* readisac ) (struct IsdnCardState*,int ) ;TYPE_4__ hw; int HW_Flags; scalar_t__ tx_cnt; int sq; TYPE_5__* tx_skb; int dbusytimer; int channel; int squeue; TYPE_2__ dc; } ;
struct BCState {int debug; int (* readisac ) (struct IsdnCardState*,int ) ;TYPE_4__ hw; int HW_Flags; scalar_t__ tx_cnt; int sq; TYPE_5__* tx_skb; int dbusytimer; int channel; int squeue; TYPE_2__ dc; } ;
struct TYPE_10__ {scalar_t__ len; } ;


 int B_XMTBUFREADY ;
 int D_CLEARBUSY ;
 int D_L1STATECHANGE ;
 int D_XMTBUFREADY ;
 int FLG_DBUSY_TIMER ;
 int FLG_L1_DBUSY ;
 int FLG_LOCK_ATOMIC ;
 int HFCD_STATES ;
 int L1_DEB_ISAC ;
 struct IsdnCardState* Sel_BCS (struct IsdnCardState*,int) ;
 int debugl1 (struct IsdnCardState*,char*,...) ;
 int del_timer (int *) ;
 int dev_kfree_skb_irq (TYPE_5__*) ;
 int hfc_fill_dfifo (struct IsdnCardState*) ;
 int hfc_fill_fifo (struct IsdnCardState*) ;
 int main_rec_2bds0 (struct IsdnCardState*) ;
 int receive_dmsg (struct IsdnCardState*) ;
 int schedule_event (struct IsdnCardState*,int ) ;
 void* skb_dequeue (int *) ;
 int stub1 (struct IsdnCardState*,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void
hfc2bds0_interrupt(struct IsdnCardState *cs, u_char val)
{
        u_char exval;
        struct BCState *bcs;
 int count=15;

 if (cs->debug & L1_DEB_ISAC)
  debugl1(cs, "HFCD irq %x %s", val,
   test_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags) ?
   "locked" : "unlocked");
 val &= cs->hw.hfcD.int_m1;
 if (val & 0x40) {
  exval = cs->readisac(cs, HFCD_STATES) & 0xf;
  if (cs->debug & L1_DEB_ISAC)
   debugl1(cs, "ph_state chg %d->%d", cs->dc.hfcd.ph_state,
    exval);
  cs->dc.hfcd.ph_state = exval;
  schedule_event(cs, D_L1STATECHANGE);
  val &= ~0x40;
 }
 while (val) {
  if (test_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
   cs->hw.hfcD.int_s1 |= val;
   return;
  }
  if (cs->hw.hfcD.int_s1 & 0x18) {
   exval = val;
   val = cs->hw.hfcD.int_s1;
   cs->hw.hfcD.int_s1 = exval;
  }
  if (val & 0x08) {
   if (!(bcs=Sel_BCS(cs, 0))) {
    if (cs->debug)
     debugl1(cs, "hfcd spurious 0x08 IRQ");
   } else
    main_rec_2bds0(bcs);
  }
  if (val & 0x10) {
   if (!(bcs=Sel_BCS(cs, 1))) {
    if (cs->debug)
     debugl1(cs, "hfcd spurious 0x10 IRQ");
   } else
    main_rec_2bds0(bcs);
  }
  if (val & 0x01) {
   if (!(bcs=Sel_BCS(cs, 0))) {
    if (cs->debug)
     debugl1(cs, "hfcd spurious 0x01 IRQ");
   } else {
    if (bcs->tx_skb) {
     if (!test_and_set_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
      hfc_fill_fifo(bcs);
      test_and_clear_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags);
     } else
      debugl1(cs,"fill_data %d blocked", bcs->channel);
    } else {
     if ((bcs->tx_skb = skb_dequeue(&bcs->squeue))) {
      if (!test_and_set_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
       hfc_fill_fifo(bcs);
       test_and_clear_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags);
      } else
       debugl1(cs,"fill_data %d blocked", bcs->channel);
     } else {
      schedule_event(bcs, B_XMTBUFREADY);
     }
    }
   }
  }
  if (val & 0x02) {
   if (!(bcs=Sel_BCS(cs, 1))) {
    if (cs->debug)
     debugl1(cs, "hfcd spurious 0x02 IRQ");
   } else {
    if (bcs->tx_skb) {
     if (!test_and_set_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
      hfc_fill_fifo(bcs);
      test_and_clear_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags);
     } else
      debugl1(cs,"fill_data %d blocked", bcs->channel);
    } else {
     if ((bcs->tx_skb = skb_dequeue(&bcs->squeue))) {
      if (!test_and_set_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
       hfc_fill_fifo(bcs);
       test_and_clear_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags);
      } else
       debugl1(cs,"fill_data %d blocked", bcs->channel);
     } else {
      schedule_event(bcs, B_XMTBUFREADY);
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
    schedule_event(cs, D_CLEARBUSY);
   if (cs->tx_skb) {
    if (cs->tx_skb->len) {
     if (!test_and_set_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
      hfc_fill_dfifo(cs);
      test_and_clear_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags);
     } else {
      debugl1(cs, "hfc_fill_dfifo irq blocked");
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
     hfc_fill_dfifo(cs);
     test_and_clear_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags);
    } else {
     debugl1(cs, "hfc_fill_dfifo irq blocked");
    }
   } else
    schedule_event(cs, D_XMTBUFREADY);
  }
      afterXPR:
  if (cs->hw.hfcD.int_s1 && count--) {
   val = cs->hw.hfcD.int_s1;
   cs->hw.hfcD.int_s1 = 0;
   if (cs->debug & L1_DEB_ISAC)
    debugl1(cs, "HFCD irq %x loop %d", val, 15-count);
  } else
   val = 0;
 }
}
