
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {unsigned long long ict_tbl; int ict_tbl_dma; int inta_mask; scalar_t__ ict_index; } ;
struct iwl_trans {int dev; } ;


 int CSR_INT_BIT_RX_PERIODIC ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ICT_SIZE ;
 int IWL_DEBUG_ISR (struct iwl_trans*,char*,unsigned long long) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 scalar_t__ WARN_ON (int) ;
 unsigned long long dma_alloc_coherent (int ,int,int*,int ) ;
 int iwl_pcie_free_ict (struct iwl_trans*) ;
 int memset (unsigned long long,int ,int) ;

int iwl_pcie_alloc_ict(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 trans_pcie->ict_tbl =
  dma_alloc_coherent(trans->dev, ICT_SIZE,
       &trans_pcie->ict_tbl_dma,
       GFP_KERNEL);
 if (!trans_pcie->ict_tbl)
  return -ENOMEM;


 if (WARN_ON(trans_pcie->ict_tbl_dma & (ICT_SIZE - 1))) {
  iwl_pcie_free_ict(trans);
  return -EINVAL;
 }

 IWL_DEBUG_ISR(trans, "ict dma addr %Lx\n",
        (unsigned long long)trans_pcie->ict_tbl_dma);

 IWL_DEBUG_ISR(trans, "ict vir addr %p\n", trans_pcie->ict_tbl);


 memset(trans_pcie->ict_tbl, 0, ICT_SIZE);
 trans_pcie->ict_index = 0;


 trans_pcie->inta_mask |= CSR_INT_BIT_RX_PERIODIC;
 return 0;
}
