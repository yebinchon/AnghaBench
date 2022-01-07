
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {scalar_t__ chargeinfo; } ;
struct l3_process {TYPE_3__* st; TYPE_2__ para; int timer; } ;
struct TYPE_4__ {int (* l3l4 ) (TYPE_3__*,int,struct l3_process*) ;} ;
struct TYPE_6__ {TYPE_1__ l3; } ;


 int CC_SETUP ;
 int CONFIRM ;
 int ERR_IE_COMPREHENSION ;
 int L3DelTimer (int *) ;
 int check_infoelements (struct l3_process*,struct sk_buff*,int ) ;
 int ie_CONNECT ;
 int l3dss1_std_ie_err (struct l3_process*,int) ;
 int newl3state (struct l3_process*,int) ;
 int stub1 (TYPE_3__*,int,struct l3_process*) ;

__attribute__((used)) static void
l3dss1_connect(struct l3_process *pc, u_char pr, void *arg)
{
 struct sk_buff *skb = arg;
 int ret;

 ret = check_infoelements(pc, skb, ie_CONNECT);
 if (ERR_IE_COMPREHENSION == ret) {
  l3dss1_std_ie_err(pc, ret);
  return;
 }
 L3DelTimer(&pc->timer);
 newl3state(pc, 10);
 pc->para.chargeinfo = 0;

 if (ret)
  l3dss1_std_ie_err(pc, ret);
 pc->st->l3.l3l4(pc->st, CC_SETUP | CONFIRM, pc);
}
