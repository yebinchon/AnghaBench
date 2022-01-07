
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Flags; int timer; int (* l1hw ) (struct PStack*,int,int *) ;} ;
struct PStack {TYPE_1__ l1; } ;
struct FsmInst {struct PStack* userdata; } ;


 int EV_TIMER3 ;
 int FLG_L1_ACTIVATING ;
 int FLG_L1_T3RUN ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int FsmRestartTimer (int *,int ,int ,int *,int) ;
 int HW_INFO3 ;
 int REQUEST ;
 int ST_L1_F3 ;
 int ST_L1_F4 ;
 int TIMER3_VALUE ;
 int stub1 (struct PStack*,int,int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
l1_power_up_s(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 if (test_bit(FLG_L1_ACTIVATING, &st->l1.Flags)) {
  FsmChangeState(fi, ST_L1_F4);
  st->l1.l1hw(st, HW_INFO3 | REQUEST, ((void*)0));
  FsmRestartTimer(&st->l1.timer, TIMER3_VALUE, EV_TIMER3, ((void*)0), 2);
  test_and_set_bit(FLG_L1_T3RUN, &st->l1.Flags);
 } else
  FsmChangeState(fi, ST_L1_F3);
}
