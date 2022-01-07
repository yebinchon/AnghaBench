
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct sk_buff {scalar_t__ data; } ;
struct ath_common {unsigned long cachelsz; } ;
typedef int gfp_t ;


 struct sk_buff* __dev_alloc_skb (unsigned long,int ) ;
 int pr_err (char*,unsigned long) ;
 int skb_reserve (struct sk_buff*,unsigned long) ;

struct sk_buff *ath_rxbuf_alloc(struct ath_common *common,
    u32 len,
    gfp_t gfp_mask)
{
 struct sk_buff *skb;
 u32 off;
 skb = __dev_alloc_skb(len + common->cachelsz - 1, gfp_mask);
 if (skb != ((void*)0)) {
  off = ((unsigned long) skb->data) % common->cachelsz;
  if (off != 0)
   skb_reserve(skb, common->cachelsz - off);
 } else {
  pr_err("skbuff alloc of size %u failed\n", len);
  return ((void*)0);
 }

 return skb;
}
