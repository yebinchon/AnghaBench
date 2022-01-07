
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans_pcie {int reg_lock; } ;
struct iwl_trans {int dummy; } ;


 int CSR_GP_CNTRL ;
 int CSR_GP_CNTRL_REG_FLAG_GOING_TO_SLEEP ;
 int CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ ;
 int CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY ;
 int CSR_GP_CNTRL_REG_VAL_MAC_ACCESS_EN ;
 int CSR_RESET ;
 int CSR_RESET_REG_FLAG_FORCE_NMI ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int WARN_ONCE (int,char*,int ) ;
 int __iwl_trans_pcie_set_bit (struct iwl_trans*,int ,int ) ;
 int __release (int *) ;
 int iwl_poll_bit (struct iwl_trans*,int ,int ,int,int) ;
 int iwl_read32 (struct iwl_trans*,int ) ;
 int iwl_write32 (struct iwl_trans*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool iwl_trans_pcie_grab_nic_access(struct iwl_trans *trans, bool silent,
      unsigned long *flags)
{
 int ret;
 struct iwl_trans_pcie *pcie_trans = IWL_TRANS_GET_PCIE_TRANS(trans);
 spin_lock_irqsave(&pcie_trans->reg_lock, *flags);


 __iwl_trans_pcie_set_bit(trans, CSR_GP_CNTRL,
     CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ);
 ret = iwl_poll_bit(trans, CSR_GP_CNTRL,
      CSR_GP_CNTRL_REG_VAL_MAC_ACCESS_EN,
      (CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY |
       CSR_GP_CNTRL_REG_FLAG_GOING_TO_SLEEP), 15000);
 if (unlikely(ret < 0)) {
  iwl_write32(trans, CSR_RESET, CSR_RESET_REG_FLAG_FORCE_NMI);
  if (!silent) {
   u32 val = iwl_read32(trans, CSR_GP_CNTRL);
   WARN_ONCE(1,
      "Timeout waiting for hardware access (CSR_GP_CNTRL 0x%08x)\n",
      val);
   spin_unlock_irqrestore(&pcie_trans->reg_lock, *flags);
   return 0;
  }
 }





 __release(&pcie_trans->reg_lock);
 return 1;
}
