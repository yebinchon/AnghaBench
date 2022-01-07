
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int len; int data; } ;
struct TYPE_6__ {int cause; } ;
struct l3_process {int debug; int state; TYPE_3__* st; int callref; TYPE_1__ para; } ;
struct TYPE_7__ {int (* l3l4 ) (TYPE_3__*,int,struct l3_process*) ;} ;
struct TYPE_8__ {TYPE_2__ l3; } ;


 int CC_RELEASE ;
 int ERR_IE_COMPREHENSION ;
 int ERR_IE_UNRECOGNIZED ;
 int IE_FACILITY ;
 int INDICATION ;
 int L3_DEB_WARN ;
 int MT_RELEASE_COMPLETE ;
 int NO_CAUSE ;
 int StopAllL3Timer (struct l3_process*) ;
 int check_infoelements (struct l3_process*,struct sk_buff*,int ) ;
 int * findie (int ,int ,int ,int ) ;
 int ie_RELEASE ;
 int l3_debug (TYPE_3__*,char*,int) ;
 int l3ni1_get_cause (struct l3_process*,struct sk_buff*) ;
 int l3ni1_message (struct l3_process*,int ) ;
 int l3ni1_message_cause (struct l3_process*,int ,int) ;
 int l3ni1_parse_facility (TYPE_3__*,struct l3_process*,int ,int *) ;
 int newl3state (struct l3_process*,int ) ;
 int ni1_release_l3_process (struct l3_process*) ;
 int stub1 (TYPE_3__*,int,struct l3_process*) ;

__attribute__((used)) static void
l3ni1_release(struct l3_process *pc, u_char pr, void *arg)
{
 struct sk_buff *skb = arg;
 u_char *p;
 int ret, cause=0;

 StopAllL3Timer(pc);
 if ((ret = l3ni1_get_cause(pc, skb))>0) {
  if (pc->debug & L3_DEB_WARN)
   l3_debug(pc->st, "REL get_cause ret(%d)", ret);
 } else if (ret<0)
  pc->para.cause = NO_CAUSE;
 if ((p = findie(skb->data, skb->len, IE_FACILITY, 0))) {
  l3ni1_parse_facility(pc->st, pc, pc->callref, p);
 }
 if ((ret<0) && (pc->state != 11))
  cause = 96;
 else if (ret>0)
  cause = 100;
 ret = check_infoelements(pc, skb, ie_RELEASE);
 if (ERR_IE_COMPREHENSION == ret)
  cause = 96;
 else if ((ERR_IE_UNRECOGNIZED == ret) && (!cause))
  cause = 99;
 if (cause)
  l3ni1_message_cause(pc, MT_RELEASE_COMPLETE, cause);
 else
  l3ni1_message(pc, MT_RELEASE_COMPLETE);
 pc->st->l3.l3l4(pc->st, CC_RELEASE | INDICATION, pc);
 newl3state(pc, 0);
 ni1_release_l3_process(pc);
}
