
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* l2tei ) (struct PStack*,int,int *) ;} ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;


 int FsmChangeState (struct FsmInst*,int ) ;
 int INDICATION ;
 int MDL_ASSIGN ;
 int ST_L2_3 ;
 int stub1 (struct PStack*,int,int *) ;

__attribute__((used)) static void
l2_mdl_assign(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 FsmChangeState(fi, ST_L2_3);
 st->l2.l2tei(st, MDL_ASSIGN | INDICATION, ((void*)0));
}
