
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int dummy; } ;
struct l3_process {TYPE_2__* st; int timer; } ;
struct TYPE_3__ {int (* l3l4 ) (TYPE_2__*,int,struct l3_process*) ;} ;
struct TYPE_4__ {TYPE_1__ l3; } ;


 int CC_ALERTING ;
 int INDICATION ;
 int L3DelTimer (int *) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int newl3state (struct l3_process*,int) ;
 int stub1 (TYPE_2__*,int,struct l3_process*) ;

__attribute__((used)) static void
l3_1tr6_alert(struct l3_process *pc, u_char pr, void *arg)
{
 struct sk_buff *skb = arg;

 dev_kfree_skb(skb);
 L3DelTimer(&pc->timer);
 newl3state(pc, 4);
 pc->st->l3.l3l4(pc->st, CC_ALERTING | INDICATION, pc);
}
