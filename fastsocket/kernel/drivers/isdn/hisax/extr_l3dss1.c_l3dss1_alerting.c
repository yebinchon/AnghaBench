
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
 int ERR_IE_COMPREHENSION ;
 int INDICATION ;
 int L3DelTimer (int *) ;
 int check_infoelements (struct l3_process*,struct sk_buff*,int ) ;
 int ie_ALERTING ;
 int l3dss1_std_ie_err (struct l3_process*,int) ;
 int newl3state (struct l3_process*,int) ;
 int stub1 (TYPE_2__*,int,struct l3_process*) ;

__attribute__((used)) static void
l3dss1_alerting(struct l3_process *pc, u_char pr, void *arg)
{
 struct sk_buff *skb = arg;
 int ret;

 ret = check_infoelements(pc, skb, ie_ALERTING);
 if (ERR_IE_COMPREHENSION == ret) {
  l3dss1_std_ie_err(pc, ret);
  return;
 }
 L3DelTimer(&pc->timer);
 newl3state(pc, 4);
 if (ret)
  l3dss1_std_ie_err(pc, ret);
 pc->st->l3.l3l4(pc->st, CC_ALERTING | INDICATION, pc);
}
