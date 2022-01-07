
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int cause; } ;
struct l3_process {int debug; TYPE_3__* st; TYPE_1__ para; int timer; } ;
struct TYPE_6__ {int (* l3l4 ) (TYPE_3__*,int,struct l3_process*) ;} ;
struct TYPE_7__ {TYPE_2__ l3; } ;


 int CC_SUSPEND ;
 int CONFIRM ;
 int L3DelTimer (int *) ;
 int L3_DEB_WARN ;
 int NO_CAUSE ;
 int check_infoelements (struct l3_process*,struct sk_buff*,int ) ;
 int dss1_release_l3_process (struct l3_process*) ;
 int ie_SUSPEND_ACKNOWLEDGE ;
 int l3_debug (TYPE_3__*,char*,int) ;
 int newl3state (struct l3_process*,int ) ;
 int stub1 (TYPE_3__*,int,struct l3_process*) ;

__attribute__((used)) static void
l3dss1_suspend_ack(struct l3_process *pc, u_char pr, void *arg)
{
 struct sk_buff *skb = arg;
 int ret;

 L3DelTimer(&pc->timer);
 newl3state(pc, 0);
 pc->para.cause = NO_CAUSE;
 pc->st->l3.l3l4(pc->st, CC_SUSPEND | CONFIRM, pc);

 if ((ret = check_infoelements(pc, skb, ie_SUSPEND_ACKNOWLEDGE)))
  if (pc->debug & L3_DEB_WARN)
   l3_debug(pc->st, "SUSPACK check ie(%d)",ret);
 dss1_release_l3_process(pc);
}
