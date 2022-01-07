
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct efx_rx_queue {unsigned int ptr_mask; struct efx_nic* efx; } ;
struct efx_rx_buffer {int flags; unsigned int len; int page_offset; } ;
struct efx_nic {TYPE_1__* type; int net_dev; int rx_scatter; } ;
struct efx_channel {unsigned int rx_pkt_n_frags; unsigned int rx_pkt_index; } ;
struct TYPE_2__ {scalar_t__ rx_buffer_hash_size; } ;


 unsigned int EFX_RX_MAX_FRAGS ;
 int EFX_RX_PKT_CSUMMED ;
 int EFX_RX_PKT_DISCARD ;
 unsigned int EFX_RX_USR_BUF_SIZE ;
 int WARN_ON (int) ;
 int efx_discard_rx_packet (struct efx_channel*,struct efx_rx_buffer*,unsigned int) ;
 int efx_recycle_rx_pages (struct efx_channel*,struct efx_rx_buffer*,unsigned int) ;
 struct efx_rx_buffer* efx_rx_buf_next (struct efx_rx_queue*,struct efx_rx_buffer*) ;
 int efx_rx_buf_va (struct efx_rx_buffer*) ;
 struct efx_rx_buffer* efx_rx_buffer (struct efx_rx_queue*,unsigned int) ;
 int efx_rx_flush_packet (struct efx_channel*) ;
 int efx_rx_packet__check_len (struct efx_rx_queue*,struct efx_rx_buffer*,unsigned int) ;
 struct efx_channel* efx_rx_queue_channel (struct efx_rx_queue*) ;
 int efx_rx_queue_index (struct efx_rx_queue*) ;
 int efx_sync_rx_buffer (struct efx_nic*,struct efx_rx_buffer*,unsigned int) ;
 int netif_vdbg (struct efx_nic*,int ,int ,char*,int ,unsigned int,unsigned int,unsigned int,char*,char*) ;
 int prefetch (int ) ;
 int rx_status ;
 scalar_t__ unlikely (int) ;

void efx_rx_packet(struct efx_rx_queue *rx_queue, unsigned int index,
     unsigned int n_frags, unsigned int len, u16 flags)
{
 struct efx_nic *efx = rx_queue->efx;
 struct efx_channel *channel = efx_rx_queue_channel(rx_queue);
 struct efx_rx_buffer *rx_buf;

 rx_buf = efx_rx_buffer(rx_queue, index);
 rx_buf->flags |= flags;


 if (n_frags == 1) {
  efx_rx_packet__check_len(rx_queue, rx_buf, len);
 } else if (unlikely(n_frags > EFX_RX_MAX_FRAGS) ||
     unlikely(len <= (n_frags - 1) * EFX_RX_USR_BUF_SIZE) ||
     unlikely(len > n_frags * EFX_RX_USR_BUF_SIZE) ||
     unlikely(!efx->rx_scatter)) {



  WARN_ON(!(len == 0 && rx_buf->flags & EFX_RX_PKT_DISCARD));
  rx_buf->flags |= EFX_RX_PKT_DISCARD;
 }

 netif_vdbg(efx, rx_status, efx->net_dev,
     "RX queue %d received ids %x-%x len %d %s%s\n",
     efx_rx_queue_index(rx_queue), index,
     (index + n_frags - 1) & rx_queue->ptr_mask, len,
     (rx_buf->flags & EFX_RX_PKT_CSUMMED) ? " [SUMMED]" : "",
     (rx_buf->flags & EFX_RX_PKT_DISCARD) ? " [DISCARD]" : "");




 if (unlikely(rx_buf->flags & EFX_RX_PKT_DISCARD)) {
  efx_rx_flush_packet(channel);
  efx_discard_rx_packet(channel, rx_buf, n_frags);
  return;
 }

 if (n_frags == 1)
  rx_buf->len = len;




 efx_sync_rx_buffer(efx, rx_buf, rx_buf->len);




 prefetch(efx_rx_buf_va(rx_buf));

 rx_buf->page_offset += efx->type->rx_buffer_hash_size;
 rx_buf->len -= efx->type->rx_buffer_hash_size;

 if (n_frags > 1) {



  unsigned int tail_frags = n_frags - 1;

  for (;;) {
   rx_buf = efx_rx_buf_next(rx_queue, rx_buf);
   if (--tail_frags == 0)
    break;
   efx_sync_rx_buffer(efx, rx_buf, EFX_RX_USR_BUF_SIZE);
  }
  rx_buf->len = len - (n_frags - 1) * EFX_RX_USR_BUF_SIZE;
  efx_sync_rx_buffer(efx, rx_buf, rx_buf->len);
 }


 rx_buf = efx_rx_buffer(rx_queue, index);
 efx_recycle_rx_pages(channel, rx_buf, n_frags);




 efx_rx_flush_packet(channel);
 channel->rx_pkt_n_frags = n_frags;
 channel->rx_pkt_index = index;
}
