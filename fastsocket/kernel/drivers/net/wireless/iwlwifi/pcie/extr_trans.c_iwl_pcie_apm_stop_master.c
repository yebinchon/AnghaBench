
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dummy; } ;


 int CSR_RESET ;
 int CSR_RESET_REG_FLAG_MASTER_DISABLED ;
 int CSR_RESET_REG_FLAG_STOP_MASTER ;
 int IWL_DEBUG_INFO (struct iwl_trans*,char*) ;
 int IWL_WARN (struct iwl_trans*,char*) ;
 int iwl_poll_bit (struct iwl_trans*,int ,int ,int ,int) ;
 int iwl_set_bit (struct iwl_trans*,int ,int ) ;

__attribute__((used)) static int iwl_pcie_apm_stop_master(struct iwl_trans *trans)
{
 int ret = 0;


 iwl_set_bit(trans, CSR_RESET, CSR_RESET_REG_FLAG_STOP_MASTER);

 ret = iwl_poll_bit(trans, CSR_RESET,
      CSR_RESET_REG_FLAG_MASTER_DISABLED,
      CSR_RESET_REG_FLAG_MASTER_DISABLED, 100);
 if (ret)
  IWL_WARN(trans, "Master Disable Timed Out, 100 usec\n");

 IWL_DEBUG_INFO(trans, "stop master\n");

 return ret;
}
