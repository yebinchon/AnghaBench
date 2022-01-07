
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rx_queue {int dummy; } ;


 int EFX_CHANNEL_MAGIC_FILL (struct efx_rx_queue*) ;
 int efx_magic_event (int ,int ) ;
 int efx_rx_queue_channel (struct efx_rx_queue*) ;

void efx_nic_generate_fill_event(struct efx_rx_queue *rx_queue)
{
 efx_magic_event(efx_rx_queue_channel(rx_queue),
   EFX_CHANNEL_MAGIC_FILL(rx_queue));
}
