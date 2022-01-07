
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
struct l3_process {int debug; TYPE_3__* st; int timer; TYPE_1__ para; } ;
struct TYPE_6__ {int (* l3l4 ) (TYPE_3__*,int ,struct l3_process*) ;} ;
struct TYPE_7__ {TYPE_2__ l3; } ;


 int CC_SUSPEND_ERR ;
 int ERR_IE_COMPREHENSION ;
 int L3DelTimer (int *) ;
 int L3_DEB_WARN ;
 int check_infoelements (struct l3_process*,struct sk_buff*,int ) ;
 int ie_SUSPEND_REJECT ;
 int l3_debug (TYPE_3__*,char*,int) ;
 int l3ni1_get_cause (struct l3_process*,struct sk_buff*) ;
 int l3ni1_status_send (struct l3_process*,int ,int *) ;
 int l3ni1_std_ie_err (struct l3_process*,int) ;
 int newl3state (struct l3_process*,int) ;
 int stub1 (TYPE_3__*,int ,struct l3_process*) ;

__attribute__((used)) static void
l3ni1_suspend_rej(struct l3_process *pc, u_char pr, void *arg)
{
 struct sk_buff *skb = arg;
 int ret;

 if ((ret = l3ni1_get_cause(pc, skb))) {
  if (pc->debug & L3_DEB_WARN)
   l3_debug(pc->st, "SUSP_REJ get_cause ret(%d)",ret);
  if (ret < 0)
   pc->para.cause = 96;
  else
   pc->para.cause = 100;
  l3ni1_status_send(pc, pr, ((void*)0));
  return;
 }
 ret = check_infoelements(pc, skb, ie_SUSPEND_REJECT);
 if (ERR_IE_COMPREHENSION == ret) {
  l3ni1_std_ie_err(pc, ret);
  return;
 }
 L3DelTimer(&pc->timer);
 pc->st->l3.l3l4(pc->st, CC_SUSPEND_ERR, pc);
 newl3state(pc, 10);
 if (ret)
  l3ni1_std_ie_err(pc, ret);
}
