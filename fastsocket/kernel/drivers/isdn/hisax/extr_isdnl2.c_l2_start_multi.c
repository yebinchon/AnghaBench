
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int (* l2l3 ) (struct PStack*,int,int *) ;int T203; int t203; scalar_t__ sow; scalar_t__ vr; scalar_t__ va; scalar_t__ vs; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;


 int DL_ESTABLISH ;
 int EV_L2_T203 ;
 int FsmAddTimer (int *,int ,int ,int *,int) ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int INDICATION ;
 int RSP ;
 int ST_L2_7 ;
 int UA ;
 int clear_exception (TYPE_1__*) ;
 int get_PollFlagFree (struct PStack*,struct sk_buff*) ;
 int send_uframe (struct PStack*,int,int ) ;
 int stub1 (struct PStack*,int,int *) ;

__attribute__((used)) static void
l2_start_multi(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;
 struct sk_buff *skb = arg;

 send_uframe(st, UA | get_PollFlagFree(st, skb), RSP);

 clear_exception(&st->l2);
 st->l2.vs = 0;
 st->l2.va = 0;
 st->l2.vr = 0;
 st->l2.sow = 0;
 FsmChangeState(fi, ST_L2_7);
 FsmAddTimer(&st->l2.t203, st->l2.T203, EV_L2_T203, ((void*)0), 3);

 st->l2.l2l3(st, DL_ESTABLISH | INDICATION, ((void*)0));
}
