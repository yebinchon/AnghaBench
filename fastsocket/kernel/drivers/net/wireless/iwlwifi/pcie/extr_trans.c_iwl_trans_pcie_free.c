
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct iwl_trans_pcie {TYPE_1__* pci_dev; int hw_base; } ;
struct iwl_trans {int dev_cmd_pool; } ;
struct TYPE_4__ {int irq; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int free_irq (int ,struct iwl_trans*) ;
 int iounmap (int ) ;
 int iwl_pcie_free_ict (struct iwl_trans*) ;
 int iwl_pcie_rx_free (struct iwl_trans*) ;
 int iwl_pcie_tx_free (struct iwl_trans*) ;
 int kfree (struct iwl_trans*) ;
 int kmem_cache_destroy (int ) ;
 int pci_disable_device (TYPE_1__*) ;
 int pci_disable_msi (TYPE_1__*) ;
 int pci_release_regions (TYPE_1__*) ;
 int synchronize_irq (int ) ;

void iwl_trans_pcie_free(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 synchronize_irq(trans_pcie->pci_dev->irq);

 iwl_pcie_tx_free(trans);
 iwl_pcie_rx_free(trans);

 free_irq(trans_pcie->pci_dev->irq, trans);
 iwl_pcie_free_ict(trans);

 pci_disable_msi(trans_pcie->pci_dev);
 iounmap(trans_pcie->hw_base);
 pci_release_regions(trans_pcie->pci_dev);
 pci_disable_device(trans_pcie->pci_dev);
 kmem_cache_destroy(trans->dev_cmd_pool);

 kfree(trans);
}
