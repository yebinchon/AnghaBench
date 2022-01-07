
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int* data; int len; } ;
struct TYPE_4__ {int bchannel; } ;
struct l3_process {int state; TYPE_3__* st; int timer; TYPE_1__ para; } ;
struct TYPE_5__ {int (* l3l4 ) (TYPE_3__*,int,struct l3_process*) ;} ;
struct TYPE_6__ {TYPE_2__ l3; } ;


 int CC_PROCEEDING ;
 int CC_T310 ;
 int INDICATION ;
 int L3AddTimer (int *,int ,int ) ;
 int L3DelTimer (int *) ;
 int T310 ;
 int WE0_chanID ;
 int dev_kfree_skb (struct sk_buff*) ;
 int* findie (int*,int ,int ,int ) ;
 int l3_1tr6_error (struct l3_process*,char*,struct sk_buff*) ;
 int newl3state (struct l3_process*,int) ;
 int stub1 (TYPE_3__*,int,struct l3_process*) ;

__attribute__((used)) static void
l3_1tr6_call_sent(struct l3_process *pc, u_char pr, void *arg)
{
 u_char *p;
 struct sk_buff *skb = arg;

 L3DelTimer(&pc->timer);
 p = skb->data;
 if ((p = findie(p, skb->len, WE0_chanID, 0))) {
  if (p[1] != 1) {
   l3_1tr6_error(pc, "call sent wrong chanID len", skb);
   return;
  }
  if ((p[2] & 0xf4) != 0x80) {
   l3_1tr6_error(pc, "call sent wrong WE0_chanID", skb);
   return;
  }
  if ((pc->state == 2) && (pc->para.bchannel != (p[2] & 0x3))) {
   l3_1tr6_error(pc, "call sent wrong chanID value", skb);
   return;
  }
  pc->para.bchannel = p[2] & 0x3;
 } else {
  l3_1tr6_error(pc, "missing call sent WE0_chanID", skb);
  return;
 }
 dev_kfree_skb(skb);
 L3AddTimer(&pc->timer, T310, CC_T310);
 newl3state(pc, 3);
 pc->st->l3.l3l4(pc->st, CC_PROCEEDING | INDICATION, pc);
}
