
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int bswapped; } ;
struct TYPE_4__ {TYPE_1__ hfcsx; } ;
struct IsdnCardState {int HW_Flags; TYPE_2__ hw; } ;
struct BCState {scalar_t__ mode; int rqueue; scalar_t__ channel; struct IsdnCardState* cs; } ;


 int B_RCVBUFREADY ;
 int FLG_LOCK_ATOMIC ;
 int HFCSX_BTRANS_THRESHOLD ;
 int HFCSX_SEL_B1_RX ;
 int HFCSX_SEL_B2_RX ;
 scalar_t__ L1_MODE_TRANS ;
 int debugl1 (struct IsdnCardState*,char*,scalar_t__) ;
 struct sk_buff* read_fifo (struct IsdnCardState*,int ,int ) ;
 int schedule_event (struct BCState*,int ) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
main_rec_hfcsx(struct BCState *bcs)
{
 struct IsdnCardState *cs = bcs->cs;
 int count = 5;
 struct sk_buff *skb;

      Begin:
 count--;
 if (test_and_set_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
  debugl1(cs, "rec_data %d blocked", bcs->channel);
  return;
 }
 skb = read_fifo(cs, ((bcs->channel) && (!cs->hw.hfcsx.bswapped)) ?
   HFCSX_SEL_B2_RX : HFCSX_SEL_B1_RX,
   (bcs->mode == L1_MODE_TRANS) ?
   HFCSX_BTRANS_THRESHOLD : 0);

 if (skb) {
   skb_queue_tail(&bcs->rqueue, skb);
   schedule_event(bcs, B_RCVBUFREADY);
 }

 test_and_clear_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags);
 if (count && skb)
  goto Begin;
 return;
}
