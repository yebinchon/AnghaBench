
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {scalar_t__ n_channels; int legacy_irq_enabled; scalar_t__ legacy_irq; int loopback_selftest; } ;
struct efx_channel {scalar_t__ channel; int napi_str; scalar_t__ eventq_mask; scalar_t__ irq; int enabled; struct efx_nic* efx; } ;


 int BUG_ON (int) ;
 int efx_channel_processed (struct efx_channel*) ;
 int efx_nic_disable_interrupts (struct efx_nic*) ;
 int efx_nic_enable_interrupts (struct efx_nic*) ;
 int efx_process_channel (struct efx_channel*,scalar_t__) ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 int synchronize_irq (scalar_t__) ;

void efx_process_channel_now(struct efx_channel *channel)
{
 struct efx_nic *efx = channel->efx;

 BUG_ON(channel->channel >= efx->n_channels);
 BUG_ON(!channel->enabled);
 BUG_ON(!efx->loopback_selftest);


 efx_nic_disable_interrupts(efx);
 if (efx->legacy_irq) {
  synchronize_irq(efx->legacy_irq);
  efx->legacy_irq_enabled = 0;
 }
 if (channel->irq)
  synchronize_irq(channel->irq);


 napi_disable(&channel->napi_str);


 efx_process_channel(channel, channel->eventq_mask + 1);



 efx_channel_processed(channel);

 napi_enable(&channel->napi_str);
 if (efx->legacy_irq)
  efx->legacy_irq_enabled = 1;
 efx_nic_enable_interrupts(efx);
}
