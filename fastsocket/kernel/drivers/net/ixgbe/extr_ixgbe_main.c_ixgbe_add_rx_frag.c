
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; } ;
struct TYPE_5__ {TYPE_1__ upper; } ;
union ixgbe_adv_rx_desc {TYPE_2__ wb; } ;
struct sk_buff {int dummy; } ;
struct page {int _count; } ;
struct ixgbe_rx_buffer {int page_offset; struct page* page; } ;
struct ixgbe_ring {int dummy; } ;
struct TYPE_6__ {int nr_frags; } ;


 unsigned int ALIGN (unsigned int,int) ;
 unsigned int IXGBE_RX_HDR_SIZE ;
 int L1_CACHE_BYTES ;
 int __skb_put (struct sk_buff*,unsigned int) ;
 int atomic_set (int *,int) ;
 int get_page (struct page*) ;
 unsigned int ixgbe_rx_bufsz (struct ixgbe_ring*) ;
 unsigned int ixgbe_rx_pg_size (struct ixgbe_ring*) ;
 unsigned int le16_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 int memcpy (int ,unsigned char*,unsigned int) ;
 scalar_t__ numa_node_id () ;
 unsigned char* page_address (struct page*) ;
 int page_count (struct page*) ;
 scalar_t__ page_to_nid (struct page*) ;
 int put_page (struct page*) ;
 int skb_add_rx_frag (struct sk_buff*,int ,struct page*,int,unsigned int,unsigned int) ;
 int skb_is_nonlinear (struct sk_buff*) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool ixgbe_add_rx_frag(struct ixgbe_ring *rx_ring,
         struct ixgbe_rx_buffer *rx_buffer,
         union ixgbe_adv_rx_desc *rx_desc,
         struct sk_buff *skb)
{
 struct page *page = rx_buffer->page;
 unsigned int size = le16_to_cpu(rx_desc->wb.upper.length);

 unsigned int truesize = ixgbe_rx_bufsz(rx_ring);






 if ((size <= IXGBE_RX_HDR_SIZE) && !skb_is_nonlinear(skb)) {
  unsigned char *va = page_address(page) + rx_buffer->page_offset;

  memcpy(__skb_put(skb, size), va, ALIGN(size, sizeof(long)));


  if (likely(page_to_nid(page) == numa_node_id()))
   return 1;


  put_page(page);
  return 0;
 }

 skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, page,
   rx_buffer->page_offset, size, truesize);


 if (unlikely(page_to_nid(page) != numa_node_id()))
  return 0;



 if (unlikely(page_count(page) != 1))
  return 0;


 rx_buffer->page_offset ^= truesize;






 atomic_set(&page->_count, 2);
 return 1;
}
