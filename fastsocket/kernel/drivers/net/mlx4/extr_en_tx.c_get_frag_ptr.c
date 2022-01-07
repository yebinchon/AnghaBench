
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skb_frag_struct {int page_offset; struct page* page; } ;
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_2__ {struct skb_frag_struct* frags; } ;


 void* page_address (struct page*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void *get_frag_ptr(struct sk_buff *skb)
{
 struct skb_frag_struct *frag = &skb_shinfo(skb)->frags[0];
 struct page *page = frag->page;
 void *ptr;

 ptr = page_address(page);
 if (unlikely(!ptr))
  return ((void*)0);

 return ptr + frag->page_offset;
}
