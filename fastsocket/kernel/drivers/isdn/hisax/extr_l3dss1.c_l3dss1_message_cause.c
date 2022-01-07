
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sk_buff {int dummy; } ;
struct l3_process {int st; int callref; } ;


 int DL_DATA ;
 int IE_CAUSE ;
 int MsgHead (int*,int ,int) ;
 int REQUEST ;
 struct sk_buff* l3_alloc_skb (int) ;
 int l3_msg (int ,int,struct sk_buff*) ;
 int memcpy (int ,int*,int) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void
l3dss1_message_cause(struct l3_process *pc, u_char mt, u_char cause)
{
 struct sk_buff *skb;
 u_char tmp[16];
 u_char *p = tmp;
 int l;

 MsgHead(p, pc->callref, mt);
 *p++ = IE_CAUSE;
 *p++ = 0x2;
 *p++ = 0x80;
 *p++ = cause | 0x80;

 l = p - tmp;
 if (!(skb = l3_alloc_skb(l)))
  return;
 memcpy(skb_put(skb, l), tmp, l);
 l3_msg(pc->st, DL_DATA | REQUEST, skb);
}
