
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int nr_frags; } ;


 void* get_frag_ptr (struct sk_buff*) ;
 scalar_t__ inline_thold ;
 int skb_is_gso (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int is_inline(struct sk_buff *skb, void **pfrag)
{
 void *ptr;

 if (inline_thold && !skb_is_gso(skb) && skb->len <= inline_thold) {
  if (skb_shinfo(skb)->nr_frags == 1) {
   ptr = get_frag_ptr(skb);
   if (unlikely(!ptr))
    return 0;

   if (pfrag)
    *pfrag = ptr;

   return 1;
  } else if (unlikely(skb_shinfo(skb)->nr_frags))
   return 0;
  else
   return 1;
 }

 return 0;
}
