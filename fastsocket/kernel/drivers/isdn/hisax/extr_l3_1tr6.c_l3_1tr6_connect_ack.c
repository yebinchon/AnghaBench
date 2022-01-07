
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int len; int data; } ;
struct TYPE_5__ {scalar_t__ chargeinfo; } ;
struct l3_process {TYPE_3__* st; int timer; TYPE_2__ para; } ;
struct TYPE_4__ {int (* l3l4 ) (TYPE_3__*,int,struct l3_process*) ;} ;
struct TYPE_6__ {TYPE_1__ l3; } ;


 int CC_SETUP_COMPL ;
 int INDICATION ;
 int L3DelTimer (int *) ;
 int WE6_date ;
 int dev_kfree_skb (struct sk_buff*) ;
 int findie (int ,int ,int ,int) ;
 int l3_1tr6_error (struct l3_process*,char*,struct sk_buff*) ;
 int newl3state (struct l3_process*,int) ;
 int stub1 (TYPE_3__*,int,struct l3_process*) ;

__attribute__((used)) static void
l3_1tr6_connect_ack(struct l3_process *pc, u_char pr, void *arg)
{
 struct sk_buff *skb = arg;

 if (!findie(skb->data, skb->len, WE6_date, 6)) {
  l3_1tr6_error(pc, "missing connack date", skb);
  return;
 }
 dev_kfree_skb(skb);
 newl3state(pc, 10);
 pc->para.chargeinfo = 0;
 L3DelTimer(&pc->timer);
 pc->st->l3.l3l4(pc->st, CC_SETUP_COMPL | INDICATION, pc);
}
