
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
struct l3_process {int debug; TYPE_3__* st; TYPE_1__ para; } ;
struct TYPE_6__ {int (* l3l4 ) (TYPE_3__*,int,struct l3_process*) ;} ;
struct TYPE_7__ {TYPE_2__ l3; } ;


 int CC_RELEASE ;
 int CONFIRM ;
 int L3_DEB_WARN ;
 int NO_CAUSE ;
 int StopAllL3Timer (struct l3_process*) ;
 int l3_debug (TYPE_3__*,char*,int) ;
 int l3ni1_get_cause (struct l3_process*,struct sk_buff*) ;
 int newl3state (struct l3_process*,int ) ;
 int ni1_release_l3_process (struct l3_process*) ;
 int stub1 (TYPE_3__*,int,struct l3_process*) ;

__attribute__((used)) static void
l3ni1_release_cmpl(struct l3_process *pc, u_char pr, void *arg)
{
 struct sk_buff *skb = arg;
 int ret;

 if ((ret = l3ni1_get_cause(pc, skb))>0) {
  if (pc->debug & L3_DEB_WARN)
   l3_debug(pc->st, "RELCMPL get_cause ret(%d)",ret);
 } else if (ret < 0)
  pc->para.cause = NO_CAUSE;
 StopAllL3Timer(pc);
 newl3state(pc, 0);
 pc->st->l3.l3l4(pc->st, CC_RELEASE | CONFIRM, pc);
 ni1_release_l3_process(pc);
}
