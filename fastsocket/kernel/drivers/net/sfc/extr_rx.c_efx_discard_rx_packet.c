
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rx_queue {int dummy; } ;
struct efx_rx_buffer {int dummy; } ;
struct efx_channel {int dummy; } ;


 struct efx_rx_queue* efx_channel_get_rx_queue (struct efx_channel*) ;
 int efx_free_rx_buffer (struct efx_rx_buffer*) ;
 int efx_recycle_rx_pages (struct efx_channel*,struct efx_rx_buffer*,unsigned int) ;
 struct efx_rx_buffer* efx_rx_buf_next (struct efx_rx_queue*,struct efx_rx_buffer*) ;

__attribute__((used)) static void efx_discard_rx_packet(struct efx_channel *channel,
      struct efx_rx_buffer *rx_buf,
      unsigned int n_frags)
{
 struct efx_rx_queue *rx_queue = efx_channel_get_rx_queue(channel);

 efx_recycle_rx_pages(channel, rx_buf, n_frags);

 do {
  efx_free_rx_buffer(rx_buf);
  rx_buf = efx_rx_buf_next(rx_queue, rx_buf);
 } while (--n_frags);
}
