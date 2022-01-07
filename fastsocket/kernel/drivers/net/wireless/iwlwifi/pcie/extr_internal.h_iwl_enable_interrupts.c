
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {int inta_mask; int status; } ;
struct iwl_trans {int dummy; } ;


 int CSR_INT_MASK ;
 int IWL_DEBUG_ISR (struct iwl_trans*,char*) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int STATUS_INT_ENABLED ;
 int iwl_write32 (struct iwl_trans*,int ,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void iwl_enable_interrupts(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 IWL_DEBUG_ISR(trans, "Enabling interrupts\n");
 set_bit(STATUS_INT_ENABLED, &trans_pcie->status);
 iwl_write32(trans, CSR_INT_MASK, trans_pcie->inta_mask);
}
