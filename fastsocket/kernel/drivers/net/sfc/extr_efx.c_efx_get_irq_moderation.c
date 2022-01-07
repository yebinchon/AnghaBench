
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {int irq_rx_adaptive; int irq_rx_moderation; int timer_quantum_ns; size_t tx_channel_offset; TYPE_1__** channel; } ;
struct TYPE_2__ {int irq_moderation; } ;


 unsigned int DIV_ROUND_UP (int,int) ;

void efx_get_irq_moderation(struct efx_nic *efx, unsigned int *tx_usecs,
       unsigned int *rx_usecs, bool *rx_adaptive)
{




 *rx_adaptive = efx->irq_rx_adaptive;
 *rx_usecs = DIV_ROUND_UP(efx->irq_rx_moderation *
     efx->timer_quantum_ns,
     1000);





 if (efx->tx_channel_offset == 0)
  *tx_usecs = *rx_usecs;
 else
  *tx_usecs = DIV_ROUND_UP(
   efx->channel[efx->tx_channel_offset]->irq_moderation *
   efx->timer_quantum_ns,
   1000);
}
