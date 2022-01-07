
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rx_queue {unsigned int min_fill; unsigned int max_fill; unsigned int fast_fill_trigger; int enabled; scalar_t__ page_recycle_full; scalar_t__ page_recycle_failed; scalar_t__ page_recycle_count; scalar_t__ page_ptr_mask; scalar_t__ page_add; scalar_t__ page_remove; scalar_t__ removed_count; scalar_t__ notified_count; scalar_t__ added_count; struct efx_nic* efx; } ;
struct efx_nic {unsigned int rxq_entries; unsigned int rx_pages_per_batch; unsigned int rx_bufs_per_page; int net_dev; } ;


 unsigned int EFX_RXD_HEAD_ROOM ;
 int drv ;
 int efx_init_rx_recycle_ring (struct efx_nic*,struct efx_rx_queue*) ;
 int efx_nic_init_rx (struct efx_rx_queue*) ;
 int efx_rx_queue_index (struct efx_rx_queue*) ;
 unsigned int min (scalar_t__,unsigned int) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,int ) ;
 scalar_t__ rx_refill_threshold ;

void efx_init_rx_queue(struct efx_rx_queue *rx_queue)
{
 struct efx_nic *efx = rx_queue->efx;
 unsigned int max_fill, trigger, max_trigger;

 netif_dbg(rx_queue->efx, drv, rx_queue->efx->net_dev,
    "initialising RX queue %d\n", efx_rx_queue_index(rx_queue));


 rx_queue->added_count = 0;
 rx_queue->notified_count = 0;
 rx_queue->removed_count = 0;
 rx_queue->min_fill = -1U;
 efx_init_rx_recycle_ring(efx, rx_queue);

 rx_queue->page_remove = 0;
 rx_queue->page_add = rx_queue->page_ptr_mask + 1;
 rx_queue->page_recycle_count = 0;
 rx_queue->page_recycle_failed = 0;
 rx_queue->page_recycle_full = 0;


 max_fill = efx->rxq_entries - EFX_RXD_HEAD_ROOM;
 max_trigger =
  max_fill - efx->rx_pages_per_batch * efx->rx_bufs_per_page;
 if (rx_refill_threshold != 0) {
  trigger = max_fill * min(rx_refill_threshold, 100U) / 100U;
  if (trigger > max_trigger)
   trigger = max_trigger;
 } else {
  trigger = max_trigger;
 }

 rx_queue->max_fill = max_fill;
 rx_queue->fast_fill_trigger = trigger;


 rx_queue->enabled = 1;
 efx_nic_init_rx(rx_queue);
}
