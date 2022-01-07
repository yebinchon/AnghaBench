
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rx_queue {int scatter_n; int removed_count; int ptr_mask; struct efx_nic* efx; } ;
struct efx_nic {int net_dev; } ;
struct efx_channel {int n_rx_nodesc_trunc; } ;


 scalar_t__ EFX_WORKAROUND_5676 (struct efx_nic*) ;
 int RESET_TYPE_DISABLE ;
 int RESET_TYPE_RX_RECOVERY ;
 struct efx_channel* efx_rx_queue_channel (struct efx_rx_queue*) ;
 int efx_schedule_reset (struct efx_nic*,int ) ;
 int netif_info (struct efx_nic*,int ,int ,char*,unsigned int,unsigned int,unsigned int) ;
 int rx_err ;

__attribute__((used)) static bool
efx_handle_rx_bad_index(struct efx_rx_queue *rx_queue, unsigned index)
{
 struct efx_channel *channel = efx_rx_queue_channel(rx_queue);
 struct efx_nic *efx = rx_queue->efx;
 unsigned expected, dropped;

 if (rx_queue->scatter_n &&
     index == ((rx_queue->removed_count + rx_queue->scatter_n - 1) &
        rx_queue->ptr_mask)) {
  ++channel->n_rx_nodesc_trunc;
  return 1;
 }

 expected = rx_queue->removed_count & rx_queue->ptr_mask;
 dropped = (index - expected) & rx_queue->ptr_mask;
 netif_info(efx, rx_err, efx->net_dev,
     "dropped %d events (index=%d expected=%d)\n",
     dropped, index, expected);

 efx_schedule_reset(efx, EFX_WORKAROUND_5676(efx) ?
      RESET_TYPE_RX_RECOVERY : RESET_TYPE_DISABLE);
 return 0;
}
