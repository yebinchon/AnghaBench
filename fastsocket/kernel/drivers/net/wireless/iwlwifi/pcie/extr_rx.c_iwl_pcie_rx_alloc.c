
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rxq {int * bd; scalar_t__ bd_dma; void* rb_stts; scalar_t__ rb_stts_dma; int lock; } ;
struct iwl_trans_pcie {struct iwl_rxq rxq; } ;
struct iwl_trans {struct device* dev; } ;
struct device {int dummy; } ;
typedef int __le32 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int RX_QUEUE_SIZE ;
 scalar_t__ WARN_ON (int) ;
 int dma_free_coherent (struct device*,int,int *,scalar_t__) ;
 void* dma_zalloc_coherent (struct device*,int,scalar_t__*,int ) ;
 int memset (struct iwl_rxq*,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int iwl_pcie_rx_alloc(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 struct iwl_rxq *rxq = &trans_pcie->rxq;
 struct device *dev = trans->dev;

 memset(&trans_pcie->rxq, 0, sizeof(trans_pcie->rxq));

 spin_lock_init(&rxq->lock);

 if (WARN_ON(rxq->bd || rxq->rb_stts))
  return -EINVAL;


 rxq->bd = dma_zalloc_coherent(dev, sizeof(__le32) * RX_QUEUE_SIZE,
          &rxq->bd_dma, GFP_KERNEL);
 if (!rxq->bd)
  goto err_bd;


 rxq->rb_stts = dma_zalloc_coherent(dev, sizeof(*rxq->rb_stts),
        &rxq->rb_stts_dma, GFP_KERNEL);
 if (!rxq->rb_stts)
  goto err_rb_stts;

 return 0;

err_rb_stts:
 dma_free_coherent(dev, sizeof(__le32) * RX_QUEUE_SIZE,
     rxq->bd, rxq->bd_dma);
 rxq->bd_dma = 0;
 rxq->bd = ((void*)0);
err_bd:
 return -ENOMEM;
}
