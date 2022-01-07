
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;


 scalar_t__ IOC3_CACHELINE ;
 int aligned_rx_skb_addr (unsigned long) ;
 struct sk_buff* alloc_skb (scalar_t__,unsigned int) ;
 scalar_t__ likely (struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static inline struct sk_buff * ioc3_alloc_skb(unsigned long length,
 unsigned int gfp_mask)
{
 struct sk_buff *skb;

 skb = alloc_skb(length + IOC3_CACHELINE - 1, gfp_mask);
 if (likely(skb)) {
  int offset = aligned_rx_skb_addr((unsigned long) skb->data);
  if (offset)
   skb_reserve(skb, offset);
 }

 return skb;
}
