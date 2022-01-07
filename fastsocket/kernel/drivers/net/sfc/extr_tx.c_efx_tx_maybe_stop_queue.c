
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {int core_txq; void* old_read_count; void* insert_count; int read_count; struct efx_nic* efx; } ;
struct efx_nic {unsigned int txq_stop_thresh; unsigned int txq_entries; int loopback_selftest; } ;


 void* ACCESS_ONCE (int ) ;
 int EFX_BUG_ON_PARANOID (int) ;
 struct efx_tx_queue* efx_tx_queue_partner (struct efx_tx_queue*) ;
 scalar_t__ likely (int) ;
 unsigned int max (void*,void*) ;
 int netif_tx_start_queue (int ) ;
 int netif_tx_stop_queue (int ) ;
 int smp_mb () ;

__attribute__((used)) static void efx_tx_maybe_stop_queue(struct efx_tx_queue *txq1)
{

 struct efx_tx_queue *txq2 = efx_tx_queue_partner(txq1);
 struct efx_nic *efx = txq1->efx;
 unsigned int fill_level;

 fill_level = max(txq1->insert_count - txq1->old_read_count,
    txq2->insert_count - txq2->old_read_count);
 if (likely(fill_level < efx->txq_stop_thresh))
  return;
 netif_tx_stop_queue(txq1->core_txq);
 smp_mb();
 txq1->old_read_count = ACCESS_ONCE(txq1->read_count);
 txq2->old_read_count = ACCESS_ONCE(txq2->read_count);

 fill_level = max(txq1->insert_count - txq1->old_read_count,
    txq2->insert_count - txq2->old_read_count);
 EFX_BUG_ON_PARANOID(fill_level >= efx->txq_entries);
 if (likely(fill_level < efx->txq_stop_thresh)) {
  smp_mb();
  if (likely(!efx->loopback_selftest))
   netif_tx_start_queue(txq1->core_txq);
 }
}
