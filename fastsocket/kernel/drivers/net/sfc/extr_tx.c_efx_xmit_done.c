
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {unsigned int ptr_mask; int insert_count; int read_count; int old_write_count; int empty_read_count; int write_count; int core_txq; struct efx_nic* efx; } ;
struct efx_nic {unsigned int txq_wake_thresh; int net_dev; int port_enabled; } ;


 int ACCESS_ONCE (int ) ;
 int EFX_BUG_ON_PARANOID (int) ;
 int EFX_EMPTY_COUNT_VALID ;
 int efx_dequeue_buffers (struct efx_tx_queue*,unsigned int) ;
 struct efx_tx_queue* efx_tx_queue_partner (struct efx_tx_queue*) ;
 scalar_t__ likely (int ) ;
 unsigned int max (int,int) ;
 int netif_device_present (int ) ;
 int netif_tx_queue_stopped (int ) ;
 int netif_tx_wake_queue (int ) ;
 int smp_mb () ;
 scalar_t__ unlikely (int ) ;

void efx_xmit_done(struct efx_tx_queue *tx_queue, unsigned int index)
{
 unsigned fill_level;
 struct efx_nic *efx = tx_queue->efx;
 struct efx_tx_queue *txq2;

 EFX_BUG_ON_PARANOID(index > tx_queue->ptr_mask);

 efx_dequeue_buffers(tx_queue, index);





 smp_mb();
 if (unlikely(netif_tx_queue_stopped(tx_queue->core_txq)) &&
     likely(efx->port_enabled) &&
     likely(netif_device_present(efx->net_dev))) {
  txq2 = efx_tx_queue_partner(tx_queue);
  fill_level = max(tx_queue->insert_count - tx_queue->read_count,
     txq2->insert_count - txq2->read_count);
  if (fill_level <= efx->txq_wake_thresh)
   netif_tx_wake_queue(tx_queue->core_txq);
 }


 if ((int)(tx_queue->read_count - tx_queue->old_write_count) >= 0) {
  tx_queue->old_write_count = ACCESS_ONCE(tx_queue->write_count);
  if (tx_queue->read_count == tx_queue->old_write_count) {
   smp_mb();
   tx_queue->empty_read_count =
    tx_queue->read_count | EFX_EMPTY_COUNT_VALID;
  }
 }
}
