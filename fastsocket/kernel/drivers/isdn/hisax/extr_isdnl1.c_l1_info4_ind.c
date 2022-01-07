
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Flags; int timer; int (* l1hw ) (struct PStack*,int,int *) ;} ;
struct PStack {TYPE_1__ l1; } ;
struct FsmInst {struct PStack* userdata; } ;


 int EV_TIMER_ACT ;
 int FLG_L1_ACTIVATED ;
 int FLG_L1_ACTTIMER ;
 int FLG_L1_DEACTTIMER ;
 int FLG_L1_T3RUN ;
 int FLG_L1_UINT ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int FsmDelTimer (int *,int) ;
 int FsmRestartTimer (int *,int,int ,int *,int) ;
 int HW_INFO3 ;
 int REQUEST ;
 int ST_L1_F7 ;
 int ST_L1_TRANS ;
 int stub1 (struct PStack*,int,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
l1_info4_ind(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;






  FsmChangeState(fi, ST_L1_F7);
 st->l1.l1hw(st, HW_INFO3 | REQUEST, ((void*)0));
 if (test_and_clear_bit(FLG_L1_DEACTTIMER, &st->l1.Flags))
  FsmDelTimer(&st->l1.timer, 4);
 if (!test_bit(FLG_L1_ACTIVATED, &st->l1.Flags)) {
  if (test_and_clear_bit(FLG_L1_T3RUN, &st->l1.Flags))
   FsmDelTimer(&st->l1.timer, 3);
  FsmRestartTimer(&st->l1.timer, 110, EV_TIMER_ACT, ((void*)0), 2);
  test_and_set_bit(FLG_L1_ACTTIMER, &st->l1.Flags);
 }
}
