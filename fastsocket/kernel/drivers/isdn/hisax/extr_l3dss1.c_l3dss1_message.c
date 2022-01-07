
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sk_buff {int dummy; } ;
struct l3_process {int st; int callref; } ;


 int DL_DATA ;
 int MsgHead (int *,int ,int ) ;
 int REQUEST ;
 struct sk_buff* l3_alloc_skb (int) ;
 int l3_msg (int ,int,struct sk_buff*) ;
 int * skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void
l3dss1_message(struct l3_process *pc, u_char mt)
{
 struct sk_buff *skb;
 u_char *p;

 if (!(skb = l3_alloc_skb(4)))
  return;
 p = skb_put(skb, 4);
 MsgHead(p, pc->callref, mt);
 l3_msg(pc->st, DL_DATA | REQUEST, skb);
}
