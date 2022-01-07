
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct sk_buff {scalar_t__ priority; } ;


 struct sk_buff* dev_alloc_skb (int ) ;
 int skb_put (struct sk_buff*,int ) ;

struct sk_buff *brcmu_pkt_buf_get_skb(uint len)
{
 struct sk_buff *skb;

 skb = dev_alloc_skb(len);
 if (skb) {
  skb_put(skb, len);
  skb->priority = 0;
 }

 return skb;
}
