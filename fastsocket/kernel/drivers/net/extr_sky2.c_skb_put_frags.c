
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {unsigned int tail; unsigned int len; unsigned int data_len; unsigned int truesize; } ;
struct TYPE_3__ {unsigned int size; int page; } ;
typedef TYPE_1__ skb_frag_t ;
struct TYPE_4__ {int nr_frags; TYPE_1__* frags; } ;


 scalar_t__ PAGE_SIZE ;
 int __free_page (int ) ;
 unsigned int min (unsigned int,unsigned int) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void skb_put_frags(struct sk_buff *skb, unsigned int hdr_space,
     unsigned int length)
{
 int i, num_frags;
 unsigned int size;


 size = min(length, hdr_space);
 skb->tail += size;
 skb->len += size;
 length -= size;

 num_frags = skb_shinfo(skb)->nr_frags;
 for (i = 0; i < num_frags; i++) {
  skb_frag_t *frag = &skb_shinfo(skb)->frags[i];

  if (length == 0) {

   __free_page(frag->page);
   --skb_shinfo(skb)->nr_frags;
  } else {
   size = min(length, (unsigned) PAGE_SIZE);

   frag->size = size;
   skb->data_len += size;
   skb->truesize += size;
   skb->len += size;
   length -= size;
  }
 }
}
