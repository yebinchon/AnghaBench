
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct BCState {TYPE_2__* st; int rqueue; } ;
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_4__ {int (* l1l2 ) (TYPE_2__*,int,struct sk_buff*) ;TYPE_3__ l1m; int timer; } ;
struct TYPE_5__ {TYPE_1__ l1; } ;


 int EV_TIMER_ACT ;
 int FsmDelTimer (int *,int) ;
 int FsmEvent (TYPE_3__*,int ,int *) ;
 int INDICATION ;
 int PH_DATA ;
 scalar_t__ ST_L1_WAIT_ACT ;
 struct sk_buff* skb_dequeue (int *) ;
 int stub1 (TYPE_2__*,int,struct sk_buff*) ;

__attribute__((used)) static void
BChannel_proc_rcv(struct BCState *bcs)
{
 struct sk_buff *skb;

 if (bcs->st->l1.l1m.state == ST_L1_WAIT_ACT) {
  FsmDelTimer(&bcs->st->l1.timer, 4);
  FsmEvent(&bcs->st->l1.l1m, EV_TIMER_ACT, ((void*)0));
 }
 while ((skb = skb_dequeue(&bcs->rqueue))) {
  bcs->st->l1.l1l2(bcs->st, PH_DATA | INDICATION, skb);
 }
}
