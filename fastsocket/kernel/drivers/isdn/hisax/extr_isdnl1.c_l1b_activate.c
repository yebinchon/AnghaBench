
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int delay; int timer; } ;
struct PStack {TYPE_1__ l1; } ;
struct FsmInst {struct PStack* userdata; } ;


 int EV_TIMER_ACT ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int FsmRestartTimer (int *,int ,int ,int *,int) ;
 int ST_L1_WAIT_ACT ;

__attribute__((used)) static void
l1b_activate(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 FsmChangeState(fi, ST_L1_WAIT_ACT);
 FsmRestartTimer(&st->l1.timer, st->l1.delay, EV_TIMER_ACT, ((void*)0), 2);
}
