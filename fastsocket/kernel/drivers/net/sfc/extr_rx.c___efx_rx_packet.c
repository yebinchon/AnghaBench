
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct efx_rx_buffer {int flags; int len; } ;
struct efx_nic {int loopback_selftest; int rx_checksum_enabled; } ;
struct efx_channel {int rx_pkt_n_frags; TYPE_1__* type; int rx_pkt_index; int rx_queue; struct efx_nic* efx; } ;
struct TYPE_2__ {int receive_skb; } ;


 int EFX_RX_PKT_CSUMMED ;
 int EFX_RX_PKT_TCP ;
 int efx_free_rx_buffer (struct efx_rx_buffer*) ;
 int efx_loopback_rx_packet (struct efx_nic*,int *,int ) ;
 int * efx_rx_buf_va (struct efx_rx_buffer*) ;
 struct efx_rx_buffer* efx_rx_buffer (int *,int ) ;
 int efx_rx_deliver (struct efx_channel*,int *,struct efx_rx_buffer*,int ) ;
 int efx_rx_packet_gro (struct efx_channel*,struct efx_rx_buffer*,int ,int *) ;
 scalar_t__ unlikely (int) ;

void __efx_rx_packet(struct efx_channel *channel)
{
 struct efx_nic *efx = channel->efx;
 struct efx_rx_buffer *rx_buf =
  efx_rx_buffer(&channel->rx_queue, channel->rx_pkt_index);
 u8 *eh = efx_rx_buf_va(rx_buf);




 if (unlikely(efx->loopback_selftest)) {
  efx_loopback_rx_packet(efx, eh, rx_buf->len);
  efx_free_rx_buffer(rx_buf);
  goto out;
 }

 if (unlikely(!efx->rx_checksum_enabled))
  rx_buf->flags &= ~EFX_RX_PKT_CSUMMED;

 if ((rx_buf->flags & EFX_RX_PKT_TCP) && !channel->type->receive_skb)
  efx_rx_packet_gro(channel, rx_buf, channel->rx_pkt_n_frags, eh);
 else
  efx_rx_deliver(channel, eh, rx_buf, channel->rx_pkt_n_frags);
out:
 channel->rx_pkt_n_frags = 0;
}
