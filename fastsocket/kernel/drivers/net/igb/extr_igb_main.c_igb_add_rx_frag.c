
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; } ;
struct TYPE_5__ {TYPE_1__ upper; } ;
union e1000_adv_rx_desc {TYPE_2__ wb; } ;
struct sk_buff {int dummy; } ;
struct page {int _count; } ;
struct igb_rx_buffer {int page_offset; struct page* page; } ;
struct igb_ring {int q_vector; } ;
struct TYPE_6__ {int nr_frags; } ;


 int ALIGN (unsigned int,int) ;
 int E1000_RXDADV_STAT_TSIP ;
 int IGB_RX_BUFSZ ;
 unsigned int IGB_RX_HDR_LEN ;
 scalar_t__ IGB_TS_HDR_LEN ;
 int PAGE_SIZE ;
 scalar_t__ SKB_DATA_ALIGN (unsigned int) ;
 int __skb_put (struct sk_buff*,unsigned int) ;
 int atomic_set (int *,int) ;
 int get_page (struct page*) ;
 int igb_ptp_rx_pktstamp (int ,unsigned char*,struct sk_buff*) ;
 scalar_t__ igb_test_staterr (union e1000_adv_rx_desc*,int ) ;
 unsigned int le16_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 int memcpy (int ,unsigned char*,int ) ;
 scalar_t__ numa_node_id () ;
 unsigned char* page_address (struct page*) ;
 int page_count (struct page*) ;
 scalar_t__ page_to_nid (struct page*) ;
 int put_page (struct page*) ;
 int skb_add_rx_frag (struct sk_buff*,int ,struct page*,int,unsigned int,int) ;
 int skb_is_nonlinear (struct sk_buff*) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool igb_add_rx_frag(struct igb_ring *rx_ring,
       struct igb_rx_buffer *rx_buffer,
       union e1000_adv_rx_desc *rx_desc,
       struct sk_buff *skb)
{
 struct page *page = rx_buffer->page;
 unsigned int size = le16_to_cpu(rx_desc->wb.upper.length);

 if ((size <= IGB_RX_HDR_LEN) && !skb_is_nonlinear(skb)) {
  unsigned char *va = page_address(page) + rx_buffer->page_offset;

  if (igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP)) {
   igb_ptp_rx_pktstamp(rx_ring->q_vector, va, skb);
   va += IGB_TS_HDR_LEN;
   size -= IGB_TS_HDR_LEN;
  }

  memcpy(__skb_put(skb, size), va, ALIGN(size, sizeof(long)));


  if (likely(page_to_nid(page) == numa_node_id()))
   return 1;


  put_page(page);
  return 0;
 }

 skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, page,
   rx_buffer->page_offset, size, IGB_RX_BUFSZ);


 if (unlikely(page_to_nid(page) != numa_node_id()))
  return 0;



 if (unlikely(page_count(page) != 1))
  return 0;


 rx_buffer->page_offset ^= IGB_RX_BUFSZ;






 atomic_set(&page->_count, 2);
 return 1;
}
