
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {int status; } ;
struct iwl_trans {int dummy; } ;


 int CSR_GP_CNTRL ;
 int CSR_GP_CNTRL_REG_FLAG_INIT_DONE ;
 int CSR_RESET ;
 int CSR_RESET_REG_FLAG_SW_RESET ;
 int IWL_DEBUG_INFO (struct iwl_trans*,char*) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int STATUS_DEVICE_ENABLED ;
 int clear_bit (int ,int *) ;
 int iwl_clear_bit (struct iwl_trans*,int ,int ) ;
 int iwl_pcie_apm_stop_master (struct iwl_trans*) ;
 int iwl_set_bit (struct iwl_trans*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void iwl_pcie_apm_stop(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 IWL_DEBUG_INFO(trans, "Stop card, put in low power state\n");

 clear_bit(STATUS_DEVICE_ENABLED, &trans_pcie->status);


 iwl_pcie_apm_stop_master(trans);


 iwl_set_bit(trans, CSR_RESET, CSR_RESET_REG_FLAG_SW_RESET);

 udelay(10);





 iwl_clear_bit(trans, CSR_GP_CNTRL,
        CSR_GP_CNTRL_REG_FLAG_INIT_DONE);
}
