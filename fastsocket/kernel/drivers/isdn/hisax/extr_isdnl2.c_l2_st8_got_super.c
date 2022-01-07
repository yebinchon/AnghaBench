
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int* data; } ;
struct Layer2 {int (* l2l1 ) (struct PStack*,int,int *) ;int i_queue; int T203; int t203; int flag; } ;
struct PStack {struct Layer2 l2; } ;
struct FsmInst {struct PStack* userdata; } ;


 int EV_L2_T203 ;
 int FLG_MOD128 ;
 int FLG_ORIG ;
 int FsmAddTimer (int *,int ,int ,int *,int) ;
 int FsmChangeState (struct FsmInst*,int ) ;
 scalar_t__ IsRNR (int*,struct PStack*) ;
 int PH_PULL ;
 int REQUEST ;
 int ST_L2_7 ;
 scalar_t__ cansend (struct PStack*) ;
 int clear_peer_busy (struct Layer2*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int enquiry_response (struct PStack*) ;
 int invoke_retransmission (struct PStack*,unsigned int) ;
 int l2addrsize (struct Layer2*) ;
 scalar_t__ legalnr (struct PStack*,unsigned int) ;
 int nrerrorrecovery (struct FsmInst*) ;
 int restart_t200 (struct PStack*,int) ;
 int set_peer_busy (struct Layer2*) ;
 int setva (struct PStack*,unsigned int) ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_queue_empty (int *) ;
 int stop_t200 (struct PStack*,int) ;
 int stub1 (struct PStack*,int,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
l2_st8_got_super(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;
 struct sk_buff *skb = arg;
 int PollFlag, rsp, rnr = 0;
 unsigned int nr;
 struct Layer2 *l2 = &st->l2;

 rsp = *skb->data & 0x2;
 if (test_bit(FLG_ORIG, &l2->flag))
  rsp = !rsp;

 skb_pull(skb, l2addrsize(l2));

 if (IsRNR(skb->data, st)) {
  set_peer_busy(l2);
  rnr = 1;
 } else
  clear_peer_busy(l2);

 if (test_bit(FLG_MOD128, &l2->flag)) {
  PollFlag = (skb->data[1] & 0x1) == 0x1;
  nr = skb->data[1] >> 1;
 } else {
  PollFlag = (skb->data[0] & 0x10);
  nr = (skb->data[0] >> 5) & 0x7;
 }
 dev_kfree_skb(skb);

 if (rsp && PollFlag) {
  if (legalnr(st, nr)) {
   if (rnr) {
    restart_t200(st, 15);
   } else {
    stop_t200(st, 16);
    FsmAddTimer(&l2->t203, l2->T203,
         EV_L2_T203, ((void*)0), 5);
    setva(st, nr);
   }
   invoke_retransmission(st, nr);
   FsmChangeState(fi, ST_L2_7);
   if (!skb_queue_empty(&l2->i_queue) && cansend(st))
    st->l2.l2l1(st, PH_PULL | REQUEST, ((void*)0));
  } else
   nrerrorrecovery(fi);
 } else {
  if (!rsp && PollFlag)
   enquiry_response(st);
  if (legalnr(st, nr)) {
   setva(st, nr);
  } else
   nrerrorrecovery(fi);
 }
}
