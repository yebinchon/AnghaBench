
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int dummy; } ;
struct l3_process {int timer; int st; int callref; TYPE_2__* chan; } ;
struct TYPE_3__ {int* phone; } ;
struct TYPE_4__ {TYPE_1__ setup; } ;


 int CC_T319 ;
 int DL_DATA ;
 int IE_CALL_ID ;
 int L3AddTimer (int *,int ,int ) ;
 int MT_SUSPEND ;
 int MsgHead (int*,int ,int ) ;
 int REQUEST ;
 int T319 ;
 struct sk_buff* l3_alloc_skb (int) ;
 int l3_debug (int ,char*,int) ;
 int l3_msg (int ,int,struct sk_buff*) ;
 int memcpy (int ,int*,int) ;
 int newl3state (struct l3_process*,int) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void
l3dss1_suspend_req(struct l3_process *pc, u_char pr, void *arg)
{
 struct sk_buff *skb;
 u_char tmp[32];
 u_char *p = tmp;
 u_char i, l;
 u_char *msg = pc->chan->setup.phone;

 MsgHead(p, pc->callref, MT_SUSPEND);
 l = *msg++;
 if (l && (l <= 10)) {
  *p++ = IE_CALL_ID;
  *p++ = l;
  for (i = 0; i < l; i++)
   *p++ = *msg++;
 } else if (l) {
  l3_debug(pc->st, "SUS wrong CALL_ID len %d", l);
  return;
 }
 l = p - tmp;
 if (!(skb = l3_alloc_skb(l)))
  return;
 memcpy(skb_put(skb, l), tmp, l);
 l3_msg(pc->st, DL_DATA | REQUEST, skb);
 newl3state(pc, 15);
 L3AddTimer(&pc->timer, T319, CC_T319);
}
