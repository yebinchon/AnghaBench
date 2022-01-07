
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int bchannel; } ;
struct l3_process {int st; int callref; TYPE_1__ para; } ;


 int DL_DATA ;
 int IE_CHANNEL_ID ;
 int MsgHead (int*,int ,int) ;
 int REQUEST ;
 struct sk_buff* l3_alloc_skb (int) ;
 int l3_msg (int ,int,struct sk_buff*) ;
 int memcpy (int ,int*,int) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void
l3ni1_message_plus_chid(struct l3_process *pc, u_char mt)

{
 struct sk_buff *skb;
 u_char tmp[16];
 u_char *p = tmp;
 u_char chid;

 chid = (u_char)(pc->para.bchannel & 0x03) | 0x88;
 MsgHead(p, pc->callref, mt);
 *p++ = IE_CHANNEL_ID;
 *p++ = 0x01;
 *p++ = chid;

 if (!(skb = l3_alloc_skb(7)))
  return;
 memcpy(skb_put(skb, 7), tmp, 7);
 l3_msg(pc->st, DL_DATA | REQUEST, skb);
}
