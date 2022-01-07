
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {int queue; } ;


 int EFX_TXQ_TYPE_OFFLOAD ;

__attribute__((used)) static struct efx_tx_queue *efx_tx_queue_partner(struct efx_tx_queue *tx_queue)
{
 if (tx_queue->queue & EFX_TXQ_TYPE_OFFLOAD)
  return tx_queue - EFX_TXQ_TYPE_OFFLOAD;
 else
  return tx_queue + EFX_TXQ_TYPE_OFFLOAD;
}
