
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer1 {int Flags; int timer; int dch; int (* dcb ) (int ,int ) ;} ;
struct FsmInst {struct layer1* userdata; } ;


 int EV_TIMER_ACT ;
 int FLG_L1_ACTIVATED ;
 int FLG_L1_ACTTIMER ;
 int FLG_L1_DEACTTIMER ;
 int FLG_L1_T3RUN ;
 int INFO3_P8 ;
 int ST_L1_F7 ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;
 int mISDN_FsmDelTimer (int *,int) ;
 int mISDN_FsmRestartTimer (int *,int,int ,int *,int) ;
 int stub1 (int ,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void
l1_info4_ind(struct FsmInst *fi, int event, void *arg)
{
 struct layer1 *l1 = fi->userdata;

 mISDN_FsmChangeState(fi, ST_L1_F7);
 l1->dcb(l1->dch, INFO3_P8);
 if (test_and_clear_bit(FLG_L1_DEACTTIMER, &l1->Flags))
  mISDN_FsmDelTimer(&l1->timer, 4);
 if (!test_bit(FLG_L1_ACTIVATED, &l1->Flags)) {
  if (test_and_clear_bit(FLG_L1_T3RUN, &l1->Flags))
   mISDN_FsmDelTimer(&l1->timer, 3);
  mISDN_FsmRestartTimer(&l1->timer, 110, EV_TIMER_ACT, ((void*)0), 2);
  test_and_set_bit(FLG_L1_ACTTIMER, &l1->Flags);
 }
}
