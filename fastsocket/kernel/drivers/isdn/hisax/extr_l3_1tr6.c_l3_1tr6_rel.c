
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int* data; int len; } ;
struct TYPE_4__ {int cause; int loc; } ;
struct l3_process {TYPE_3__* st; TYPE_1__ para; } ;
struct TYPE_5__ {int (* l3l4 ) (TYPE_3__*,int,struct l3_process*) ;} ;
struct TYPE_6__ {TYPE_2__ l3; } ;


 int CC_RELEASE ;
 int INDICATION ;
 int MT_N1_REL_ACK ;
 int NO_CAUSE ;
 int PROTO_DIS_N1 ;
 int StopAllL3Timer (struct l3_process*) ;
 int WE0_cause ;
 int dev_kfree_skb (struct sk_buff*) ;
 int* findie (int*,int ,int ,int ) ;
 int l3_1TR6_message (struct l3_process*,int ,int ) ;
 int l3_1tr6_error (struct l3_process*,char*,struct sk_buff*) ;
 int newl3state (struct l3_process*,int ) ;
 int release_l3_process (struct l3_process*) ;
 int stub1 (TYPE_3__*,int,struct l3_process*) ;

__attribute__((used)) static void
l3_1tr6_rel(struct l3_process *pc, u_char pr, void *arg)
{
 struct sk_buff *skb = arg;
 u_char *p;

 p = skb->data;
 if ((p = findie(p, skb->len, WE0_cause, 0))) {
  if (p[1] > 0) {
   pc->para.cause = p[2];
   if (p[1] > 1)
    pc->para.loc = p[3];
   else
    pc->para.loc = 0;
  } else {
   pc->para.cause = 0;
   pc->para.loc = 0;
  }
 } else {
  pc->para.cause = NO_CAUSE;
  l3_1tr6_error(pc, "missing REL cause", skb);
  return;
 }
 dev_kfree_skb(skb);
 StopAllL3Timer(pc);
 newl3state(pc, 0);
 l3_1TR6_message(pc, MT_N1_REL_ACK, PROTO_DIS_N1);
 pc->st->l3.l3l4(pc->st, CC_RELEASE | INDICATION, pc);
 release_l3_process(pc);
}
