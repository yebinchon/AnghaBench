
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer1 {int Flags; int timer; } ;
struct FsmInst {struct layer1* userdata; } ;


 int EV_TIMER_DEACT ;
 int FLG_L1_DEACTTIMER ;
 int ST_L1_F3 ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;
 int mISDN_FsmRestartTimer (int *,int,int ,int *,int) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
l1_deact_req_s(struct FsmInst *fi, int event, void *arg)
{
 struct layer1 *l1 = fi->userdata;

 mISDN_FsmChangeState(fi, ST_L1_F3);
 mISDN_FsmRestartTimer(&l1->timer, 550, EV_TIMER_DEACT, ((void*)0), 2);
 test_and_set_bit(FLG_L1_DEACTTIMER, &l1->Flags);
}
