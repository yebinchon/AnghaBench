
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dummy; } ;


 int CSR_HW_IF_CONFIG_REG ;
 int CSR_HW_IF_CONFIG_REG_PREPARE ;
 int IWL_DEBUG_INFO (struct iwl_trans*,char*) ;
 int iwl_pcie_set_hw_ready (struct iwl_trans*) ;
 int iwl_set_bit (struct iwl_trans*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int iwl_pcie_prepare_card_hw(struct iwl_trans *trans)
{
 int ret;
 int t = 0;

 IWL_DEBUG_INFO(trans, "iwl_trans_prepare_card_hw enter\n");

 ret = iwl_pcie_set_hw_ready(trans);

 if (ret >= 0)
  return 0;


 iwl_set_bit(trans, CSR_HW_IF_CONFIG_REG,
      CSR_HW_IF_CONFIG_REG_PREPARE);

 do {
  ret = iwl_pcie_set_hw_ready(trans);
  if (ret >= 0)
   return 0;

  usleep_range(200, 1000);
  t += 200;
 } while (t < 150000);

 return ret;
}
