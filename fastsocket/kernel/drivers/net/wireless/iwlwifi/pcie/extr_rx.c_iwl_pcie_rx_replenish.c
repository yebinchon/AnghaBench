
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {int irq_lock; } ;
struct iwl_trans {int dummy; } ;


 int GFP_KERNEL ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int iwl_pcie_rxq_alloc_rbs (struct iwl_trans*,int ) ;
 int iwl_pcie_rxq_restock (struct iwl_trans*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void iwl_pcie_rx_replenish(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 unsigned long flags;

 iwl_pcie_rxq_alloc_rbs(trans, GFP_KERNEL);

 spin_lock_irqsave(&trans_pcie->irq_lock, flags);
 iwl_pcie_rxq_restock(trans);
 spin_unlock_irqrestore(&trans_pcie->irq_lock, flags);
}
