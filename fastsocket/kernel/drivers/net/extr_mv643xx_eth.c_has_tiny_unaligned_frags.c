
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int size; int page_offset; } ;
typedef TYPE_1__ skb_frag_t ;
struct TYPE_4__ {int nr_frags; TYPE_1__* frags; } ;


 TYPE_2__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static inline unsigned int has_tiny_unaligned_frags(struct sk_buff *skb)
{
 int frag;

 for (frag = 0; frag < skb_shinfo(skb)->nr_frags; frag++) {
  skb_frag_t *fragp = &skb_shinfo(skb)->frags[frag];
  if (fragp->size <= 8 && fragp->page_offset & 7)
   return 1;
 }

 return 0;
}
