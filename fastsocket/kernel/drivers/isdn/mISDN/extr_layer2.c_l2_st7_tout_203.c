
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer2 {scalar_t__ rc; int T203; int t203; int flag; } ;
struct FsmInst {struct layer2* userdata; } ;


 int EV_L2_T203 ;
 int FLG_DCHAN_BUSY ;
 int FLG_LAPD ;
 int ST_L2_8 ;
 int mISDN_FsmAddTimer (int *,int ,int ,int *,int) ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int transmit_enquiry (struct layer2*) ;

__attribute__((used)) static void
l2_st7_tout_203(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;

 if (test_bit(FLG_LAPD, &l2->flag) &&
  test_bit(FLG_DCHAN_BUSY, &l2->flag)) {
  mISDN_FsmAddTimer(&l2->t203, l2->T203, EV_L2_T203, ((void*)0), 9);
  return;
 }
 mISDN_FsmChangeState(fi, ST_L2_8);
 transmit_enquiry(l2);
 l2->rc = 0;
}
