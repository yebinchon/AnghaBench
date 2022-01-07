
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
typedef int gfp_t ;


 int ALIGNED_RX_SKB_ADDR (int ) ;
 struct sk_buff* alloc_skb (unsigned int,int ) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static inline struct sk_buff *myri_alloc_skb(unsigned int length, gfp_t gfp_flags)
{
 struct sk_buff *skb;

 skb = alloc_skb(length + 64, gfp_flags);
 if(skb) {
  int offset = ALIGNED_RX_SKB_ADDR(skb->data);

  if(offset)
   skb_reserve(skb, offset);
 }
 return skb;
}
