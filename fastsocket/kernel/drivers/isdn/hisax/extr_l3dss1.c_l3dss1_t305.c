
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ cause; } ;
struct l3_process {int timer; int st; int callref; TYPE_1__ para; } ;


 int CC_T308_1 ;
 int DL_DATA ;
 int IE_CAUSE ;
 int L3AddTimer (int *,int ,int ) ;
 int L3DelTimer (int *) ;
 int MT_RELEASE ;
 int MsgHead (int*,int ,int ) ;
 scalar_t__ NO_CAUSE ;
 int REQUEST ;
 int T308 ;
 struct sk_buff* l3_alloc_skb (int) ;
 int l3_msg (int ,int,struct sk_buff*) ;
 int memcpy (int ,int*,int) ;
 int newl3state (struct l3_process*,int) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void
l3dss1_t305(struct l3_process *pc, u_char pr, void *arg)
{
 u_char tmp[16];
 u_char *p = tmp;
 int l;
 struct sk_buff *skb;
 u_char cause = 16;

 L3DelTimer(&pc->timer);
 if (pc->para.cause != NO_CAUSE)
  cause = pc->para.cause;

 MsgHead(p, pc->callref, MT_RELEASE);

 *p++ = IE_CAUSE;
 *p++ = 0x2;
 *p++ = 0x80;
 *p++ = cause | 0x80;

 l = p - tmp;
 if (!(skb = l3_alloc_skb(l)))
  return;
 memcpy(skb_put(skb, l), tmp, l);
 newl3state(pc, 19);
 l3_msg(pc->st, DL_DATA | REQUEST, skb);
 L3AddTimer(&pc->timer, T308, CC_T308_1);
}
