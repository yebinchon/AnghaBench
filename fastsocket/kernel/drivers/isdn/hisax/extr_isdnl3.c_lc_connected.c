
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int l3m; scalar_t__ debug; int proc; int (* l3l2 ) (struct PStack*,int,struct sk_buff*) ;int squeue; int l3m_timer; } ;
struct PStack {TYPE_1__ l3; } ;
struct FsmInst {struct PStack* userdata; } ;


 int CONFIRM ;
 int DL_DATA ;
 int DL_ESTABLISH ;
 int EV_RELEASE_REQ ;
 int FsmChangeState (struct FsmInst*,int ) ;
 int FsmDelTimer (int *,int) ;
 int FsmEvent (int *,int ,int *) ;
 int REQUEST ;
 int ST_L3_LC_ESTAB ;
 int l3_debug (struct PStack*,char*) ;
 int l3ml3p (struct PStack*,int) ;
 struct sk_buff* skb_dequeue (int *) ;
 int stub1 (struct PStack*,int,struct sk_buff*) ;

__attribute__((used)) static void
lc_connected(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;
 struct sk_buff *skb = arg;
 int dequeued = 0;

 FsmDelTimer(&st->l3.l3m_timer, 51);
 FsmChangeState(fi, ST_L3_LC_ESTAB);
 while ((skb = skb_dequeue(&st->l3.squeue))) {
  st->l3.l3l2(st, DL_DATA | REQUEST, skb);
  dequeued++;
 }
 if ((!st->l3.proc) && dequeued) {
  if (st->l3.debug)
   l3_debug(st, "lc_connected: release link");
  FsmEvent(&st->l3.l3m, EV_RELEASE_REQ, ((void*)0));
 } else
  l3ml3p(st, DL_ESTABLISH | CONFIRM);
}
