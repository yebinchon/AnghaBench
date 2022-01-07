
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int data_len; int truesize; } ;
struct page {int dummy; } ;
struct fcoe_percpu_s {int crc_eof_offset; struct page* crc_eof_page; } ;
struct fcoe_crc_eof {int dummy; } ;
struct TYPE_2__ {int nr_frags; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int PAGE_SIZE ;
 struct page* alloc_page (int ) ;
 int get_page (struct page*) ;
 int put_page (struct page*) ;
 int skb_fill_page_desc (struct sk_buff*,int ,struct page*,int,int) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

int fcoe_get_paged_crc_eof(struct sk_buff *skb, int tlen,
      struct fcoe_percpu_s *fps)
{
 struct page *page;

 page = fps->crc_eof_page;
 if (!page) {
  page = alloc_page(GFP_ATOMIC);
  if (!page)
   return -ENOMEM;

  fps->crc_eof_page = page;
  fps->crc_eof_offset = 0;
 }

 get_page(page);
 skb_fill_page_desc(skb, skb_shinfo(skb)->nr_frags, page,
      fps->crc_eof_offset, tlen);
 skb->len += tlen;
 skb->data_len += tlen;
 skb->truesize += tlen;
 fps->crc_eof_offset += sizeof(struct fcoe_crc_eof);

 if (fps->crc_eof_offset >= PAGE_SIZE) {
  fps->crc_eof_page = ((void*)0);
  fps->crc_eof_offset = 0;
  put_page(page);
 }

 return 0;
}
