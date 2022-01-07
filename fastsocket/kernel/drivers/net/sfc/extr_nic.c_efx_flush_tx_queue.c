
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {int queue; int flush_outstanding; struct efx_nic* efx; } ;
struct efx_nic {int dummy; } ;
typedef int efx_oword_t ;


 int EFX_POPULATE_OWORD_2 (int ,int ,int,int ,int ) ;
 int FRF_AZ_TX_FLUSH_DESCQ ;
 int FRF_AZ_TX_FLUSH_DESCQ_CMD ;
 int FR_AZ_TX_FLUSH_DESCQ ;
 int WARN_ON (int ) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int efx_writeo (struct efx_nic*,int *,int ) ;

__attribute__((used)) static void efx_flush_tx_queue(struct efx_tx_queue *tx_queue)
{
 struct efx_nic *efx = tx_queue->efx;
 efx_oword_t tx_flush_descq;

 WARN_ON(atomic_read(&tx_queue->flush_outstanding));
 atomic_set(&tx_queue->flush_outstanding, 1);

 EFX_POPULATE_OWORD_2(tx_flush_descq,
        FRF_AZ_TX_FLUSH_DESCQ_CMD, 1,
        FRF_AZ_TX_FLUSH_DESCQ, tx_queue->queue);
 efx_writeo(efx, &tx_flush_descq, FR_AZ_TX_FLUSH_DESCQ);
}
