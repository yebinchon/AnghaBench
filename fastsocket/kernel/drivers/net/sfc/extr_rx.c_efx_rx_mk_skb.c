
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; int data_len; unsigned int truesize; int protocol; } ;
struct efx_rx_buffer {int len; int page_offset; int * page; } ;
struct efx_nic {unsigned int rx_buffer_truesize; int net_dev; int rx_buffer_order; } ;
struct efx_channel {int rx_queue; struct efx_nic* efx; } ;
struct TYPE_2__ {unsigned int nr_frags; } ;


 int EFX_BUG_ON_PARANOID (int) ;
 scalar_t__ EFX_PAGE_SKB_ALIGN ;
 int __free_pages (int *,int ) ;
 int __skb_put (struct sk_buff*,int) ;
 struct efx_rx_buffer* efx_rx_buf_next (int *,struct efx_rx_buffer*) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int memcpy (int ,int *,int) ;
 struct sk_buff* netdev_alloc_skb (int ,scalar_t__) ;
 int skb_fill_page_desc (struct sk_buff*,unsigned int,int *,int,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct sk_buff *efx_rx_mk_skb(struct efx_channel *channel,
         struct efx_rx_buffer *rx_buf,
         unsigned int n_frags,
         u8 *eh, int hdr_len)
{
 struct efx_nic *efx = channel->efx;
 struct sk_buff *skb;


 skb = netdev_alloc_skb(efx->net_dev, hdr_len + EFX_PAGE_SKB_ALIGN);
 if (unlikely(skb == ((void*)0)))
  return ((void*)0);

 EFX_BUG_ON_PARANOID(rx_buf->len < hdr_len);

 skb_reserve(skb, EFX_PAGE_SKB_ALIGN);
 memcpy(__skb_put(skb, hdr_len), eh, hdr_len);


 if (rx_buf->len > hdr_len) {
  rx_buf->page_offset += hdr_len;
  rx_buf->len -= hdr_len;

  for (;;) {
   skb_fill_page_desc(skb, skb_shinfo(skb)->nr_frags,
        rx_buf->page, rx_buf->page_offset,
        rx_buf->len);
   rx_buf->page = ((void*)0);
   skb->len += rx_buf->len;
   skb->data_len += rx_buf->len;
   if (skb_shinfo(skb)->nr_frags == n_frags)
    break;

   rx_buf = efx_rx_buf_next(&channel->rx_queue, rx_buf);
  }
 } else {
  __free_pages(rx_buf->page, efx->rx_buffer_order);
  rx_buf->page = ((void*)0);
  n_frags = 0;
 }

 skb->truesize += n_frags * efx->rx_buffer_truesize;


 skb->protocol = eth_type_trans(skb, efx->net_dev);

 return skb;
}
