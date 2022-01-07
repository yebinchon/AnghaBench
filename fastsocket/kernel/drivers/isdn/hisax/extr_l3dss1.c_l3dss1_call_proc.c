
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int moderate; int cause; int bchannel; } ;
struct l3_process {int debug; int state; TYPE_3__* st; int timer; TYPE_1__ para; } ;
struct TYPE_6__ {int (* l3l4 ) (TYPE_3__*,int,struct l3_process*) ;} ;
struct TYPE_7__ {TYPE_2__ l3; } ;


 int CC_PROCEEDING ;
 int CC_T310 ;
 int ERR_IE_COMPREHENSION ;
 int INDICATION ;
 int L3AddTimer (int *,int ,int ) ;
 int L3DelTimer (int *) ;
 int L3_DEB_WARN ;
 int T310 ;
 int check_infoelements (struct l3_process*,struct sk_buff*,int ) ;
 int ie_CALL_PROCEEDING ;
 int l3_debug (TYPE_3__*,char*,int) ;
 int l3dss1_get_channel_id (struct l3_process*,struct sk_buff*) ;
 int l3dss1_status_send (struct l3_process*,int ,int *) ;
 int l3dss1_std_ie_err (struct l3_process*,int) ;
 int newl3state (struct l3_process*,int) ;
 int stub1 (TYPE_3__*,int,struct l3_process*) ;

__attribute__((used)) static void
l3dss1_call_proc(struct l3_process *pc, u_char pr, void *arg)
{
 struct sk_buff *skb = arg;
 int id, ret;

 if ((id = l3dss1_get_channel_id(pc, skb)) >= 0) {
  if ((0 == id) || ((3 == id) && (0x10 == pc->para.moderate))) {
   if (pc->debug & L3_DEB_WARN)
    l3_debug(pc->st, "setup answer with wrong chid %x", id);
   pc->para.cause = 100;
   l3dss1_status_send(pc, pr, ((void*)0));
   return;
  }
  pc->para.bchannel = id;
 } else if (1 == pc->state) {
  if (pc->debug & L3_DEB_WARN)
   l3_debug(pc->st, "setup answer wrong chid (ret %d)", id);
  if (id == -1)
   pc->para.cause = 96;
  else
   pc->para.cause = 100;
  l3dss1_status_send(pc, pr, ((void*)0));
  return;
 }

 ret = check_infoelements(pc, skb, ie_CALL_PROCEEDING);
 if (ERR_IE_COMPREHENSION == ret) {
  l3dss1_std_ie_err(pc, ret);
  return;
 }
 L3DelTimer(&pc->timer);
 newl3state(pc, 3);
 L3AddTimer(&pc->timer, T310, CC_T310);
 if (ret)
  l3dss1_std_ie_err(pc, ret);
 pc->st->l3.l3l4(pc->st, CC_PROCEEDING | INDICATION, pc);
}
