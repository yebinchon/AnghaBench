
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tei; int ui_queue; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;


 int FsmChangeState (struct FsmInst*,int ) ;
 int ST_L2_1 ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void
l2_st24_tei_remove(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 skb_queue_purge(&st->l2.ui_queue);
 st->l2.tei = -1;
 FsmChangeState(fi, ST_L2_1);
}
