
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int len; int data; } ;
struct TYPE_5__ {int cause; } ;
struct l3_process {int debug; TYPE_3__* st; TYPE_1__ para; } ;
struct TYPE_6__ {int (* l3l4 ) (TYPE_3__*,int,struct l3_process*) ;} ;
struct TYPE_7__ {TYPE_2__ l3; } ;


 int CC_RELEASE ;
 int ERR_IE_COMPREHENSION ;
 int ERR_IE_UNRECOGNIZED ;
 int IE_CALL_STATE ;
 int INDICATION ;
 int L3_DEB_WARN ;
 int check_infoelements (struct l3_process*,struct sk_buff*,int ) ;
 int* findie (int ,int ,int ,int ) ;
 int ie_STATUS ;
 int ie_in_set (struct l3_process*,int,int ) ;
 int l3_debug (TYPE_3__*,char*,int,...) ;
 int l3_valid_states ;
 int l3ni1_get_cause (struct l3_process*,struct sk_buff*) ;
 int l3ni1_status_send (struct l3_process*,int ,int *) ;
 int newl3state (struct l3_process*,int ) ;
 int ni1_release_l3_process (struct l3_process*) ;
 int stub1 (TYPE_3__*,int,struct l3_process*) ;

__attribute__((used)) static void
l3ni1_status(struct l3_process *pc, u_char pr, void *arg)
{
 u_char *p;
 struct sk_buff *skb = arg;
 int ret;
 u_char cause = 0, callState = 0;

 if ((ret = l3ni1_get_cause(pc, skb))) {
  if (pc->debug & L3_DEB_WARN)
   l3_debug(pc->st, "STATUS get_cause ret(%d)",ret);
  if (ret < 0)
   cause = 96;
  else if (ret > 0)
   cause = 100;
 }
 if ((p = findie(skb->data, skb->len, IE_CALL_STATE, 0))) {
  p++;
  if (1 == *p++) {
   callState = *p;
   if (!ie_in_set(pc, *p, l3_valid_states))
    cause = 100;
  } else
   cause = 100;
 } else
  cause = 96;
 if (!cause) {
  ret = check_infoelements(pc, skb, ie_STATUS);
  if (ERR_IE_COMPREHENSION == ret)
   cause = 96;
  else if (ERR_IE_UNRECOGNIZED == ret)
   cause = 99;
 }
 if (cause) {
  u_char tmp;

  if (pc->debug & L3_DEB_WARN)
   l3_debug(pc->st, "STATUS error(%d/%d)",ret,cause);
  tmp = pc->para.cause;
  pc->para.cause = cause;
  l3ni1_status_send(pc, 0, ((void*)0));
  if (cause == 99)
   pc->para.cause = tmp;
  else
   return;
 }
 cause = pc->para.cause;
 if (((cause & 0x7f) == 111) && (callState == 0)) {




  pc->st->l3.l3l4(pc->st, CC_RELEASE | INDICATION, pc);
  newl3state(pc, 0);
  ni1_release_l3_process(pc);
 }
}
