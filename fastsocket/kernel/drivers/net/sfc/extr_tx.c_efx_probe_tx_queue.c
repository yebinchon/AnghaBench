
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {unsigned int ptr_mask; int queue; int * buffer; int * tsoh_page; struct efx_nic* efx; } ;
struct efx_nic {int txq_entries; int net_dev; } ;


 int EFX_BUG_ON_PARANOID (int) ;
 unsigned int EFX_MAX_DMAQ_SIZE ;
 int EFX_MIN_DMAQ_SIZE ;
 int EFX_TXQ_TYPE_OFFLOAD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int efx_nic_probe_tx (struct efx_tx_queue*) ;
 unsigned int efx_tsoh_page_count (struct efx_tx_queue*) ;
 void* kcalloc (unsigned int,int,int ) ;
 int kfree (int *) ;
 unsigned int max (int ,int ) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,int,int ,unsigned int) ;
 int probe ;
 int roundup_pow_of_two (int ) ;

int efx_probe_tx_queue(struct efx_tx_queue *tx_queue)
{
 struct efx_nic *efx = tx_queue->efx;
 unsigned int entries;
 int rc;


 entries = max(roundup_pow_of_two(efx->txq_entries), EFX_MIN_DMAQ_SIZE);
 EFX_BUG_ON_PARANOID(entries > EFX_MAX_DMAQ_SIZE);
 tx_queue->ptr_mask = entries - 1;

 netif_dbg(efx, probe, efx->net_dev,
    "creating TX queue %d size %#x mask %#x\n",
    tx_queue->queue, efx->txq_entries, tx_queue->ptr_mask);


 tx_queue->buffer = kcalloc(entries, sizeof(*tx_queue->buffer),
       GFP_KERNEL);
 if (!tx_queue->buffer)
  return -ENOMEM;

 if (tx_queue->queue & EFX_TXQ_TYPE_OFFLOAD) {
  tx_queue->tsoh_page =
   kcalloc(efx_tsoh_page_count(tx_queue),
    sizeof(tx_queue->tsoh_page[0]), GFP_KERNEL);
  if (!tx_queue->tsoh_page) {
   rc = -ENOMEM;
   goto fail1;
  }
 }


 rc = efx_nic_probe_tx(tx_queue);
 if (rc)
  goto fail2;

 return 0;

fail2:
 kfree(tx_queue->tsoh_page);
 tx_queue->tsoh_page = ((void*)0);
fail1:
 kfree(tx_queue->buffer);
 tx_queue->buffer = ((void*)0);
 return rc;
}
