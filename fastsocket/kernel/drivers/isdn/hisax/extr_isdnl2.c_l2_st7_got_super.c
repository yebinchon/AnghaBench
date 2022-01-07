
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int* data; } ;
struct Layer2 {unsigned int vs; unsigned int va; int (* l2l1 ) (struct PStack*,int,int *) ;int i_queue; int t203; int T203; int l2m; int flag; } ;
struct TYPE_2__ {int (* layer ) (struct PStack*,int,void*) ;} ;
struct PStack {struct Layer2 l2; TYPE_1__ ma; } ;
struct FsmInst {struct PStack* userdata; } ;


 int EV_L2_T203 ;
 int FLG_MOD128 ;
 int FLG_ORIG ;
 scalar_t__ FsmAddTimer (int *,int ,int ,int *,int) ;
 int FsmDelTimer (int *,int) ;
 int FsmRestartTimer (int *,int ,int ,int *,int) ;
 int INDICATION ;
 scalar_t__ IsREJ (int*,struct PStack*) ;
 scalar_t__ IsRNR (int*,struct PStack*) ;
 int MDL_ERROR ;
 int PH_PULL ;
 int REJ ;
 int REQUEST ;
 int RNR ;
 int RR ;
 int clear_peer_busy (struct Layer2*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int enquiry_response (struct PStack*) ;
 int invoke_retransmission (struct PStack*,unsigned int) ;
 int l2addrsize (struct Layer2*) ;
 int l2m_debug (int *,char*) ;
 scalar_t__ legalnr (struct PStack*,unsigned int) ;
 int nrerrorrecovery (struct FsmInst*) ;
 int restart_t200 (struct PStack*,int) ;
 int set_peer_busy (struct Layer2*) ;
 int setva (struct PStack*,unsigned int) ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_queue_empty (int *) ;
 int stop_t200 (struct PStack*,int) ;
 int stub1 (struct PStack*,int,void*) ;
 int stub2 (struct PStack*,int,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
l2_st7_got_super(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;
 struct sk_buff *skb = arg;
 int PollFlag, rsp, typ = RR;
 unsigned int nr;
 struct Layer2 *l2 = &st->l2;

 rsp = *skb->data & 0x2;
 if (test_bit(FLG_ORIG, &l2->flag))
  rsp = !rsp;

 skb_pull(skb, l2addrsize(l2));
 if (IsRNR(skb->data, st)) {
  set_peer_busy(l2);
  typ = RNR;
 } else
  clear_peer_busy(l2);
 if (IsREJ(skb->data, st))
  typ = REJ;

 if (test_bit(FLG_MOD128, &l2->flag)) {
  PollFlag = (skb->data[1] & 0x1) == 0x1;
  nr = skb->data[1] >> 1;
 } else {
  PollFlag = (skb->data[0] & 0x10);
  nr = (skb->data[0] >> 5) & 0x7;
 }
 dev_kfree_skb(skb);

 if (PollFlag) {
  if (rsp)
   st->ma.layer(st, MDL_ERROR | INDICATION, (void *) 'A');
  else
   enquiry_response(st);
 }
 if (legalnr(st, nr)) {
  if (typ == REJ) {
   setva(st, nr);
   invoke_retransmission(st, nr);
   stop_t200(st, 10);
   if (FsmAddTimer(&st->l2.t203, st->l2.T203,
     EV_L2_T203, ((void*)0), 6))
    l2m_debug(&st->l2.l2m, "Restart T203 ST7 REJ");
  } else if ((nr == l2->vs) && (typ == RR)) {
   setva(st, nr);
   stop_t200(st, 11);
   FsmRestartTimer(&st->l2.t203, st->l2.T203,
     EV_L2_T203, ((void*)0), 7);
  } else if ((l2->va != nr) || (typ == RNR)) {
   setva(st, nr);
   if(typ != RR) FsmDelTimer(&st->l2.t203, 9);
   restart_t200(st, 12);
  }
  if (!skb_queue_empty(&st->l2.i_queue) && (typ == RR))
   st->l2.l2l1(st, PH_PULL | REQUEST, ((void*)0));
 } else
  nrerrorrecovery(fi);
}
