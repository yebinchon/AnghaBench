
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
typedef int gfp_t ;


 scalar_t__ ALIGNED_RX_SKB_ADDR (int ) ;
 struct sk_buff* alloc_skb (int,int ) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static __inline__ struct sk_buff *gem_alloc_skb(int size,
      gfp_t gfp_flags)
{
 struct sk_buff *skb = alloc_skb(size + 64, gfp_flags);

 if (skb) {
  int offset = (int) ALIGNED_RX_SKB_ADDR(skb->data);
  if (offset)
   skb_reserve(skb, offset);
 }

 return skb;
}
