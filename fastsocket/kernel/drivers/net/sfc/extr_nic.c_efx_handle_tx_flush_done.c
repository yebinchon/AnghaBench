
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {int channel; int flush_outstanding; } ;
struct efx_nic {int n_tx_channels; } ;
typedef int efx_qword_t ;


 int EFX_CHANNEL_MAGIC_TX_DRAIN (struct efx_tx_queue*) ;
 int EFX_QWORD_FIELD (int ,int ) ;
 int EFX_TXQ_TYPES ;
 int FSF_AZ_DRIVER_EV_SUBDATA ;
 scalar_t__ atomic_cmpxchg (int *,int,int ) ;
 struct efx_tx_queue* efx_get_tx_queue (struct efx_nic*,int,int) ;
 int efx_magic_event (int ,int ) ;

__attribute__((used)) static void
efx_handle_tx_flush_done(struct efx_nic *efx, efx_qword_t *event)
{
 struct efx_tx_queue *tx_queue;
 int qid;

 qid = EFX_QWORD_FIELD(*event, FSF_AZ_DRIVER_EV_SUBDATA);
 if (qid < EFX_TXQ_TYPES * efx->n_tx_channels) {
  tx_queue = efx_get_tx_queue(efx, qid / EFX_TXQ_TYPES,
         qid % EFX_TXQ_TYPES);
  if (atomic_cmpxchg(&tx_queue->flush_outstanding, 1, 0)) {
   efx_magic_event(tx_queue->channel,
     EFX_CHANNEL_MAGIC_TX_DRAIN(tx_queue));
  }
 }
}
