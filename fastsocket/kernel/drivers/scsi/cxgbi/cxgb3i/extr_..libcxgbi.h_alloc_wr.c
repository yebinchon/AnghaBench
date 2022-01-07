
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int head; } ;
typedef int gfp_t ;


 int __skb_put (struct sk_buff*,int) ;
 struct sk_buff* alloc_skb (int,int ) ;
 int memset (int ,int ,int) ;
 int pr_info (char*,int,int) ;

__attribute__((used)) static inline struct sk_buff *alloc_wr(int wrlen, int dlen, gfp_t gfp)
{
 struct sk_buff *skb = alloc_skb(wrlen + dlen, gfp);

 if (skb) {
  __skb_put(skb, wrlen);
  memset(skb->head, 0, wrlen + dlen);
 } else
  pr_info("alloc cpl wr skb %u+%u, OOM.\n", wrlen, dlen);
 return skb;
}
