
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {int reg_lock; } ;
struct iwl_trans {int dummy; } ;


 int CSR_GP_CNTRL ;
 int CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int __acquire (int *) ;
 int __iwl_trans_pcie_clear_bit (struct iwl_trans*,int ,int ) ;
 int lockdep_assert_held (int *) ;
 int mmiowb () ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void iwl_trans_pcie_release_nic_access(struct iwl_trans *trans,
           unsigned long *flags)
{
 struct iwl_trans_pcie *pcie_trans = IWL_TRANS_GET_PCIE_TRANS(trans);

 lockdep_assert_held(&pcie_trans->reg_lock);





 __acquire(&pcie_trans->reg_lock);

 __iwl_trans_pcie_clear_bit(trans, CSR_GP_CNTRL,
       CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ);






 mmiowb();
 spin_unlock_irqrestore(&pcie_trans->reg_lock, *flags);
}
