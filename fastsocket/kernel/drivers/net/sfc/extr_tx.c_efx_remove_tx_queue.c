
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct efx_tx_queue {int * buffer; int * tsoh_page; TYPE_1__* efx; int queue; } ;
struct TYPE_3__ {int net_dev; } ;


 int drv ;
 int efx_nic_free_buffer (TYPE_1__*,int *) ;
 int efx_nic_remove_tx (struct efx_tx_queue*) ;
 int efx_tsoh_page_count (struct efx_tx_queue*) ;
 int kfree (int *) ;
 int netif_dbg (TYPE_1__*,int ,int ,char*,int ) ;

void efx_remove_tx_queue(struct efx_tx_queue *tx_queue)
{
 int i;

 if (!tx_queue->buffer)
  return;

 netif_dbg(tx_queue->efx, drv, tx_queue->efx->net_dev,
    "destroying TX queue %d\n", tx_queue->queue);
 efx_nic_remove_tx(tx_queue);

 if (tx_queue->tsoh_page) {
  for (i = 0; i < efx_tsoh_page_count(tx_queue); i++)
   efx_nic_free_buffer(tx_queue->efx,
         &tx_queue->tsoh_page[i]);
  kfree(tx_queue->tsoh_page);
  tx_queue->tsoh_page = ((void*)0);
 }

 kfree(tx_queue->buffer);
 tx_queue->buffer = ((void*)0);
}
