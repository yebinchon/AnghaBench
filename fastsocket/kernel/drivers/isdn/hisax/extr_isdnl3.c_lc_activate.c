
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* l3l2 ) (struct PStack*,int,int *) ;} ;
struct PStack {TYPE_1__ l3; } ;
struct FsmInst {struct PStack* userdata; } ;


 int DL_ESTABLISH ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int REQUEST ;
 int ST_L3_LC_ESTAB_WAIT ;
 int stub1 (struct PStack*,int,int *) ;

__attribute__((used)) static void
lc_activate(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 FsmChangeState(fi, ST_L3_LC_ESTAB_WAIT);
 st->l3.l3l2(st, DL_ESTABLISH | REQUEST, ((void*)0));
}
