
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dummy; } ;


 int CSR_HW_IF_CONFIG_REG ;
 int CSR_HW_IF_CONFIG_REG_BIT_NIC_READY ;
 int HW_READY_TIMEOUT ;
 int IWL_DEBUG_INFO (struct iwl_trans*,char*,char*) ;
 int iwl_poll_bit (struct iwl_trans*,int ,int ,int ,int ) ;
 int iwl_set_bit (struct iwl_trans*,int ,int ) ;

__attribute__((used)) static int iwl_pcie_set_hw_ready(struct iwl_trans *trans)
{
 int ret;

 iwl_set_bit(trans, CSR_HW_IF_CONFIG_REG,
      CSR_HW_IF_CONFIG_REG_BIT_NIC_READY);


 ret = iwl_poll_bit(trans, CSR_HW_IF_CONFIG_REG,
      CSR_HW_IF_CONFIG_REG_BIT_NIC_READY,
      CSR_HW_IF_CONFIG_REG_BIT_NIC_READY,
      HW_READY_TIMEOUT);

 IWL_DEBUG_INFO(trans, "hardware%s ready\n", ret < 0 ? " not" : "");
 return ret;
}
