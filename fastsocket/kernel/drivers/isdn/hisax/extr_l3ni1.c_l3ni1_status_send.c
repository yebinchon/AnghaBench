
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int cause; } ;
struct l3_process {int state; int st; TYPE_1__ para; int callref; } ;


 int DL_DATA ;
 int IE_CALL_STATE ;
 int IE_CAUSE ;
 int MT_STATUS ;
 int MsgHead (int *,int ,int ) ;
 int REQUEST ;
 struct sk_buff* l3_alloc_skb (int) ;
 int l3_msg (int ,int,struct sk_buff*) ;
 int memcpy (int ,int *,int) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void
l3ni1_status_send(struct l3_process *pc, u_char pr, void *arg)
{
 u_char tmp[16];
 u_char *p = tmp;
 int l;
 struct sk_buff *skb;

 MsgHead(p, pc->callref, MT_STATUS);

 *p++ = IE_CAUSE;
 *p++ = 0x2;
 *p++ = 0x80;
 *p++ = pc->para.cause | 0x80;

 *p++ = IE_CALL_STATE;
 *p++ = 0x1;
 *p++ = pc->state & 0x3f;

 l = p - tmp;
 if (!(skb = l3_alloc_skb(l)))
  return;
 memcpy(skb_put(skb, l), tmp, l);
 l3_msg(pc->st, DL_DATA | REQUEST, skb);
}
