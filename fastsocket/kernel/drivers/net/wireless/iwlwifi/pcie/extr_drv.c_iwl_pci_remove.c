
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct iwl_trans_pcie {int drv; } ;
struct iwl_trans {int dummy; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int iwl_drv_stop (int ) ;
 int iwl_trans_pcie_free (struct iwl_trans*) ;
 struct iwl_trans* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void iwl_pci_remove(struct pci_dev *pdev)
{
 struct iwl_trans *trans = pci_get_drvdata(pdev);
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 iwl_drv_stop(trans_pcie->drv);
 iwl_trans_pcie_free(trans);

 pci_set_drvdata(pdev, ((void*)0));
}
