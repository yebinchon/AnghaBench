
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Flags; int timer; } ;
struct PStack {TYPE_1__ l1; } ;
struct FsmInst {struct PStack* userdata; } ;


 int EV_TIMER_DEACT ;
 int FLG_L1_DEACTTIMER ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int FsmRestartTimer (int *,int,int ,int *,int) ;
 int ST_L1_F3 ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
l1_deact_req_s(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 FsmChangeState(fi, ST_L1_F3);
 FsmRestartTimer(&st->l1.timer, 550, EV_TIMER_DEACT, ((void*)0), 2);
 test_and_set_bit(FLG_L1_DEACTTIMER, &st->l1.Flags);
}
