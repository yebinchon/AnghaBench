
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_tx_queue {int initialised; int queue; TYPE_1__* efx; } ;
struct TYPE_2__ {int net_dev; } ;


 int drv ;
 int efx_nic_fini_tx (struct efx_tx_queue*) ;
 int efx_release_tx_buffers (struct efx_tx_queue*) ;
 int netif_dbg (TYPE_1__*,int ,int ,char*,int ) ;

void efx_fini_tx_queue(struct efx_tx_queue *tx_queue)
{
 if (!tx_queue->initialised)
  return;

 netif_dbg(tx_queue->efx, drv, tx_queue->efx->net_dev,
    "shutting down TX queue %d\n", tx_queue->queue);

 tx_queue->initialised = 0;


 efx_nic_fini_tx(tx_queue);

 efx_release_tx_buffers(tx_queue);
}
