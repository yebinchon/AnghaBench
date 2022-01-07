
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {scalar_t__ ict_tbl_dma; int * ict_tbl; } ;
struct iwl_trans {int dev; } ;


 int ICT_SIZE ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int dma_free_coherent (int ,int ,int *,scalar_t__) ;

void iwl_pcie_free_ict(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 if (trans_pcie->ict_tbl) {
  dma_free_coherent(trans->dev, ICT_SIZE,
      trans_pcie->ict_tbl,
      trans_pcie->ict_tbl_dma);
  trans_pcie->ict_tbl = ((void*)0);
  trans_pcie->ict_tbl_dma = 0;
 }
}
