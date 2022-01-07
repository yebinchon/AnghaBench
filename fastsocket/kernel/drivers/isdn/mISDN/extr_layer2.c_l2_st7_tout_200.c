
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer2 {scalar_t__ rc; int flag; int T200; int t200; } ;
struct FsmInst {struct layer2* userdata; } ;


 int EV_L2_T200 ;
 int FLG_DCHAN_BUSY ;
 int FLG_LAPD ;
 int FLG_T200_RUN ;
 int ST_L2_8 ;
 int mISDN_FsmAddTimer (int *,int ,int ,int *,int) ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int transmit_enquiry (struct layer2*) ;

__attribute__((used)) static void
l2_st7_tout_200(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;

 if (test_bit(FLG_LAPD, &l2->flag) &&
  test_bit(FLG_DCHAN_BUSY, &l2->flag)) {
  mISDN_FsmAddTimer(&l2->t200, l2->T200, EV_L2_T200, ((void*)0), 9);
  return;
 }
 test_and_clear_bit(FLG_T200_RUN, &l2->flag);
 l2->rc = 0;
 mISDN_FsmChangeState(fi, ST_L2_8);
 transmit_enquiry(l2);
 l2->rc++;
}
