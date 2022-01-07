
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rx_queue {int dummy; } ;
struct efx_rx_buffer {int dummy; } ;
struct efx_channel {int dummy; } ;


 struct efx_rx_queue* efx_channel_get_rx_queue (struct efx_channel*) ;
 int efx_recycle_rx_page (struct efx_channel*,struct efx_rx_buffer*) ;
 struct efx_rx_buffer* efx_rx_buf_next (struct efx_rx_queue*,struct efx_rx_buffer*) ;

__attribute__((used)) static void efx_recycle_rx_pages(struct efx_channel *channel,
     struct efx_rx_buffer *rx_buf,
     unsigned int n_frags)
{
 struct efx_rx_queue *rx_queue = efx_channel_get_rx_queue(channel);

 do {
  efx_recycle_rx_page(channel, rx_buf);
  rx_buf = efx_rx_buf_next(rx_queue, rx_buf);
 } while (--n_frags);
}
