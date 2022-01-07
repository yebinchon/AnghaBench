
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int* data; } ;


 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int isdn_ppp_strip_proto(struct sk_buff *skb)
{
 int proto;

 if (skb->len < 1)
  return -1;

 if (skb->data[0] & 0x1) {

  proto = skb->data[0];
  skb_pull(skb, 1);
 } else {
  if (skb->len < 2)
   return -1;
  proto = ((int) skb->data[0] << 8) + skb->data[1];
  skb_pull(skb, 2);
 }
 return proto;
}
