
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {scalar_t__ cause; } ;
struct l3_process {TYPE_3__* st; int callref; TYPE_1__ para; } ;
struct TYPE_6__ {int (* l3l4 ) (TYPE_3__*,int,struct l3_process*) ;} ;
struct TYPE_7__ {TYPE_2__ l3; } ;


 int CC_RELEASE ;
 int DL_DATA ;
 int IE_CAUSE ;
 int INDICATION ;
 int MT_RELEASE_COMPLETE ;
 int MsgHead (int*,int ,int ) ;
 scalar_t__ NO_CAUSE ;
 int REQUEST ;
 int dss1_release_l3_process (struct l3_process*) ;
 struct sk_buff* l3_alloc_skb (int) ;
 int l3_msg (TYPE_3__*,int,struct sk_buff*) ;
 int memcpy (int ,int*,int) ;
 int newl3state (struct l3_process*,int ) ;
 int skb_put (struct sk_buff*,int) ;
 int stub1 (TYPE_3__*,int,struct l3_process*) ;

__attribute__((used)) static void
l3dss1_reject_req(struct l3_process *pc, u_char pr, void *arg)
{
 struct sk_buff *skb;
 u_char tmp[16];
 u_char *p = tmp;
 int l;
 u_char cause = 21;

 if (pc->para.cause != NO_CAUSE)
  cause = pc->para.cause;

 MsgHead(p, pc->callref, MT_RELEASE_COMPLETE);

 *p++ = IE_CAUSE;
 *p++ = 0x2;
 *p++ = 0x80;
 *p++ = cause | 0x80;

 l = p - tmp;
 if (!(skb = l3_alloc_skb(l)))
  return;
 memcpy(skb_put(skb, l), tmp, l);
 l3_msg(pc->st, DL_DATA | REQUEST, skb);
 pc->st->l3.l3l4(pc->st, CC_RELEASE | INDICATION, pc);
 newl3state(pc, 0);
 dss1_release_l3_process(pc);
}
