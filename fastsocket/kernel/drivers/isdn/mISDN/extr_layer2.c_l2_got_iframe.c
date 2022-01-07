
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sk_buff {int* data; } ;
struct layer2 {int vr; int vs; int va; int flag; int i_queue; int T203; int t203; } ;
struct FsmInst {scalar_t__ state; struct layer2* userdata; } ;


 int DL_DATA_IND ;
 int EV_L2_ACK_PULL ;
 int EV_L2_T203 ;
 int FLG_ACK_PEND ;
 int FLG_MOD128 ;
 int FLG_OWN_BUSY ;
 int FLG_PEER_BUSY ;
 int FLG_REJEXC ;
 int REJ ;
 int RR ;
 int RSP ;
 scalar_t__ ST_L2_7 ;
 int dev_kfree_skb (struct sk_buff*) ;
 int enquiry_cr (struct layer2*,int ,int ,int) ;
 int enquiry_response (struct layer2*) ;
 int l2addrsize (struct layer2*) ;
 int l2headersize (struct layer2*,int ) ;
 int l2up (struct layer2*,int ,struct sk_buff*) ;
 scalar_t__ legalnr (struct layer2*,int) ;
 int mISDN_FsmEvent (struct FsmInst*,int ,int *) ;
 int mISDN_FsmRestartTimer (int *,int ,int ,int *,int) ;
 int nrerrorrecovery (struct FsmInst*) ;
 int restart_t200 (struct layer2*,int) ;
 int setva (struct layer2*,int) ;
 int skb_pull (struct sk_buff*,int ) ;
 scalar_t__ skb_queue_len (int *) ;
 int stop_t200 (struct layer2*,int) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
l2_got_iframe(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;
 struct sk_buff *skb = arg;
 int PollFlag, i;
 u_int ns, nr;

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
  if (PollFlag)
   enquiry_response(l2);
 } else {
  if (l2->vr == ns) {
   l2->vr++;
   if (test_bit(FLG_MOD128, &l2->flag))
    l2->vr %= 128;
   else
    l2->vr %= 8;
   test_and_clear_bit(FLG_REJEXC, &l2->flag);
   if (PollFlag)
    enquiry_response(l2);
   else
    test_and_set_bit(FLG_ACK_PEND, &l2->flag);
   skb_pull(skb, l2headersize(l2, 0));
   l2up(l2, DL_DATA_IND, skb);
  } else {

   dev_kfree_skb(skb);
   if (test_and_set_bit(FLG_REJEXC, &l2->flag)) {
    if (PollFlag)
     enquiry_response(l2);
   } else {
    enquiry_cr(l2, REJ, RSP, PollFlag);
    test_and_clear_bit(FLG_ACK_PEND, &l2->flag);
   }
  }
 }
 if (legalnr(l2, nr)) {
  if (!test_bit(FLG_PEER_BUSY, &l2->flag) &&
      (fi->state == ST_L2_7)) {
   if (nr == l2->vs) {
    stop_t200(l2, 13);
    mISDN_FsmRestartTimer(&l2->t203, l2->T203,
      EV_L2_T203, ((void*)0), 7);
   } else if (nr != l2->va)
    restart_t200(l2, 14);
  }
  setva(l2, nr);
 } else {
  nrerrorrecovery(fi);
  return;
 }
 if (skb_queue_len(&l2->i_queue) && (fi->state == ST_L2_7))
  mISDN_FsmEvent(fi, EV_L2_ACK_PULL, ((void*)0));
 if (test_and_clear_bit(FLG_ACK_PEND, &l2->flag))
  enquiry_cr(l2, RR, RSP, 0);
}
