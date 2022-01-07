
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_tx_queue {int dummy; } ;
struct efx_nic {unsigned int n_tx_channels; unsigned int tx_channel_offset; TYPE_1__** channel; } ;
struct TYPE_2__ {struct efx_tx_queue* tx_queue; } ;


 int EFX_BUG_ON_PARANOID (int) ;
 unsigned int EFX_TXQ_TYPES ;

__attribute__((used)) static inline struct efx_tx_queue *
efx_get_tx_queue(struct efx_nic *efx, unsigned index, unsigned type)
{
 EFX_BUG_ON_PARANOID(index >= efx->n_tx_channels ||
       type >= EFX_TXQ_TYPES);
 return &efx->channel[efx->tx_channel_offset + index]->tx_queue[type];
}
