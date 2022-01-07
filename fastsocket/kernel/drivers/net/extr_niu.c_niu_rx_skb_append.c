
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct sk_buff {int truesize; int data_len; int len; } ;
struct page {int dummy; } ;
struct TYPE_3__ {void* size; void* page_offset; struct page* page; } ;
typedef TYPE_1__ skb_frag_t ;
struct TYPE_4__ {int nr_frags; TYPE_1__* frags; } ;


 TYPE_2__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void niu_rx_skb_append(struct sk_buff *skb, struct page *page,
         u32 offset, u32 size)
{
 int i = skb_shinfo(skb)->nr_frags;
 skb_frag_t *frag = &skb_shinfo(skb)->frags[i];

 frag->page = page;
 frag->page_offset = offset;
 frag->size = size;

 skb->len += size;
 skb->data_len += size;
 skb->truesize += size;

 skb_shinfo(skb)->nr_frags = i + 1;
}
