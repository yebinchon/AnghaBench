
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* l1l2 ) (struct PStack*,int,int *) ;} ;
struct PStack {TYPE_1__ l1; } ;
struct FsmInst {struct PStack* userdata; } ;


 int CONFIRM ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int PH_ACTIVATE ;
 int ST_L1_ACTIV ;
 int stub1 (struct PStack*,int,int *) ;

__attribute__((used)) static void
l1b_timer_act(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 FsmChangeState(fi, ST_L1_ACTIV);
 st->l1.l1l2(st, PH_ACTIVATE | CONFIRM, ((void*)0));
}
