
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rxq {int * rb_stts; scalar_t__ rb_stts_dma; int * bd; scalar_t__ bd_dma; int lock; } ;
struct iwl_trans_pcie {int rx_replenish; struct iwl_rxq rxq; } ;
struct iwl_trans {int dev; } ;
struct iwl_rb_status {int dummy; } ;
typedef int __le32 ;


 int IWL_DEBUG_INFO (struct iwl_trans*,char*) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int RX_QUEUE_SIZE ;
 int cancel_work_sync (int *) ;
 int dma_free_coherent (int ,int,int *,scalar_t__) ;
 int iwl_pcie_rxq_free_rbs (struct iwl_trans*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void iwl_pcie_rx_free(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 struct iwl_rxq *rxq = &trans_pcie->rxq;
 unsigned long flags;



 if (!rxq->bd) {
  IWL_DEBUG_INFO(trans, "Free NULL rx context\n");
  return;
 }

 cancel_work_sync(&trans_pcie->rx_replenish);

 spin_lock_irqsave(&rxq->lock, flags);
 iwl_pcie_rxq_free_rbs(trans);
 spin_unlock_irqrestore(&rxq->lock, flags);

 dma_free_coherent(trans->dev, sizeof(__le32) * RX_QUEUE_SIZE,
     rxq->bd, rxq->bd_dma);
 rxq->bd_dma = 0;
 rxq->bd = ((void*)0);

 if (rxq->rb_stts)
  dma_free_coherent(trans->dev,
      sizeof(struct iwl_rb_status),
      rxq->rb_stts, rxq->rb_stts_dma);
 else
  IWL_DEBUG_INFO(trans, "Free rxq->rb_stts which is NULL\n");
 rxq->rb_stts_dma = 0;
 rxq->rb_stts = ((void*)0);
}
