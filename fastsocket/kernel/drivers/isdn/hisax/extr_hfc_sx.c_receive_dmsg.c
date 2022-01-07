
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct IsdnCardState {int HW_Flags; int rq; } ;


 int D_RCVBUFREADY ;
 int FLG_LOCK_ATOMIC ;
 int HFCSX_SEL_D_RX ;
 int debugl1 (struct IsdnCardState*,char*) ;
 struct sk_buff* read_fifo (struct IsdnCardState*,int ,int ) ;
 int schedule_event (struct IsdnCardState*,int ) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static
int
receive_dmsg(struct IsdnCardState *cs)
{
 struct sk_buff *skb;
 int count = 5;

 if (test_and_set_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags)) {
  debugl1(cs, "rec_dmsg blocked");
  return (1);
 }

 do {
   skb = read_fifo(cs, HFCSX_SEL_D_RX, 0);
   if (skb) {
     skb_queue_tail(&cs->rq, skb);
     schedule_event(cs, D_RCVBUFREADY);
   }
 } while (--count && skb);

 test_and_clear_bit(FLG_LOCK_ATOMIC, &cs->HW_Flags);
 return (1);
}
