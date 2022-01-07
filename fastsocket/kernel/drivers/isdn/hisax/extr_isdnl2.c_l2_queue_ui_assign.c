
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int (* l2tei ) (struct PStack*,int,int *) ;int ui_queue; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;


 int FsmChangeState (struct FsmInst*,int ) ;
 int INDICATION ;
 int MDL_ASSIGN ;
 int ST_L2_2 ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int stub1 (struct PStack*,int,int *) ;

__attribute__((used)) static void
l2_queue_ui_assign(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;
 struct sk_buff *skb = arg;

 skb_queue_tail(&st->l2.ui_queue, skb);
 FsmChangeState(fi, ST_L2_2);
 st->l2.l2tei(st, MDL_ASSIGN | INDICATION, ((void*)0));
}
