
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* l2l3 ) (struct PStack*,int,int *) ;int ui_queue; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;


 int CONFIRM ;
 int DL_RELEASE ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int ST_L2_4 ;
 int skb_queue_purge (int *) ;
 int stop_t200 (struct PStack*,int) ;
 int stub1 (struct PStack*,int,int *) ;

__attribute__((used)) static void
l2_st6_persistent_da(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 skb_queue_purge(&st->l2.ui_queue);
 stop_t200(st, 20);
 st->l2.l2l3(st, DL_RELEASE | CONFIRM, ((void*)0));
 FsmChangeState(fi, ST_L2_4);
}
