
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int* data; } ;
struct Layer2 {int vr; unsigned int vs; unsigned int va; int flag; int (* l2l1 ) (struct PStack*,int,int *) ;int i_queue; int T203; int t203; int (* l2l3 ) (struct PStack*,int,struct sk_buff*) ;} ;
struct PStack {struct Layer2 l2; } ;
struct FsmInst {scalar_t__ state; struct PStack* userdata; } ;


 int DL_DATA ;
 int EV_L2_T203 ;
 int FLG_ACK_PEND ;
 int FLG_MOD128 ;
 int FLG_OWN_BUSY ;
 int FLG_PEER_BUSY ;
 int FLG_REJEXC ;
 int FsmRestartTimer (int *,int ,int ,int *,int) ;
 int INDICATION ;
 int PH_PULL ;
 int REJ ;
 int REQUEST ;
 int RR ;
 int RSP ;
 scalar_t__ ST_L2_7 ;
 int dev_kfree_skb (struct sk_buff*) ;
 int enquiry_cr (struct PStack*,int ,int ,int) ;
 int enquiry_response (struct PStack*) ;
 int l2addrsize (struct Layer2*) ;
 int l2headersize (struct Layer2*,int ) ;
 scalar_t__ legalnr (struct PStack*,unsigned int) ;
 int nrerrorrecovery (struct FsmInst*) ;
 int restart_t200 (struct PStack*,int) ;
 int setva (struct PStack*,unsigned int) ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_queue_empty (int *) ;
 int stop_t200 (struct PStack*,int) ;
 int stub1 (struct PStack*,int,struct sk_buff*) ;
 int stub2 (struct PStack*,int,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
l2_got_iframe(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;
 struct sk_buff *skb = arg;
 struct Layer2 *l2 = &(st->l2);
 int PollFlag, ns, i;
 unsigned int nr;

 i = l2addrsize(l2);
 if (test_bit(FLG_MOD128, &l2->flag)) {
  PollFlag = ((skb->data[i + 1] & 0x1) == 0x1);
  ns = skb->data[i] >> 1;
  nr = (skb->data[i + 1] >> 1) & 0x7f;
 } else {
  PollFlag = (skb->data[i] & 0x10);
  ns = (skb->data[i] >> 1) & 0x7;
  nr = (skb->data[i] >> 5) & 0x7;
 }
 if (test_bit(FLG_OWN_BUSY, &l2->flag)) {
  dev_kfree_skb(skb);
  if(PollFlag) enquiry_response(st);
 } else if (l2->vr == ns) {
  (l2->vr)++;
  if(test_bit(FLG_MOD128, &l2->flag))
   l2->vr %= 128;
  else
   l2->vr %= 8;
  test_and_clear_bit(FLG_REJEXC, &l2->flag);

  if (PollFlag)
   enquiry_response(st);
  else
   test_and_set_bit(FLG_ACK_PEND, &l2->flag);
  skb_pull(skb, l2headersize(l2, 0));
  st->l2.l2l3(st, DL_DATA | INDICATION, skb);
 } else {

  dev_kfree_skb(skb);
  if (test_and_set_bit(FLG_REJEXC, &l2->flag)) {
   if (PollFlag)
    enquiry_response(st);
  } else {
   enquiry_cr(st, REJ, RSP, PollFlag);
   test_and_clear_bit(FLG_ACK_PEND, &l2->flag);
  }
 }

 if (legalnr(st, nr)) {
  if (!test_bit(FLG_PEER_BUSY, &st->l2.flag) && (fi->state == ST_L2_7)) {
   if (nr == st->l2.vs) {
    stop_t200(st, 13);
    FsmRestartTimer(&st->l2.t203, st->l2.T203,
      EV_L2_T203, ((void*)0), 7);
   } else if (nr != st->l2.va)
    restart_t200(st, 14);
  }
  setva(st, nr);
 } else {
  nrerrorrecovery(fi);
  return;
 }

 if (!skb_queue_empty(&st->l2.i_queue) && (fi->state == ST_L2_7))
  st->l2.l2l1(st, PH_PULL | REQUEST, ((void*)0));
 if (test_and_clear_bit(FLG_ACK_PEND, &st->l2.flag))
  enquiry_cr(st, RR, RSP, 0);
}
