
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_tx_queue {int empty_read_count; int initialised; scalar_t__ old_read_count; scalar_t__ read_count; scalar_t__ old_write_count; scalar_t__ write_count; scalar_t__ insert_count; int queue; TYPE_1__* efx; } ;
struct TYPE_2__ {int net_dev; } ;


 int EFX_EMPTY_COUNT_VALID ;
 int drv ;
 int efx_nic_init_tx (struct efx_tx_queue*) ;
 int netif_dbg (TYPE_1__*,int ,int ,char*,int ) ;

void efx_init_tx_queue(struct efx_tx_queue *tx_queue)
{
 netif_dbg(tx_queue->efx, drv, tx_queue->efx->net_dev,
    "initialising TX queue %d\n", tx_queue->queue);

 tx_queue->insert_count = 0;
 tx_queue->write_count = 0;
 tx_queue->old_write_count = 0;
 tx_queue->read_count = 0;
 tx_queue->old_read_count = 0;
 tx_queue->empty_read_count = 0 | EFX_EMPTY_COUNT_VALID;


 efx_nic_init_tx(tx_queue);

 tx_queue->initialised = 1;
}
