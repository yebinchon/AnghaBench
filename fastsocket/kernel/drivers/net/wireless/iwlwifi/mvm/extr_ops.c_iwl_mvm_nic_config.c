
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct iwl_op_mode {int dummy; } ;
struct iwl_mvm {TYPE_2__* trans; TYPE_1__* fw; } ;
struct TYPE_5__ {int hw_rev; } ;
struct TYPE_4__ {int phy_config; } ;


 int APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS ;
 int APMG_PS_CTRL_REG ;
 int CSR_HW_IF_CONFIG_REG ;
 int CSR_HW_IF_CONFIG_REG_BIT_MAC_SI ;
 int CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI ;
 int CSR_HW_IF_CONFIG_REG_MSK_MAC_DASH ;
 int CSR_HW_IF_CONFIG_REG_MSK_MAC_STEP ;
 int CSR_HW_IF_CONFIG_REG_MSK_PHY_DASH ;
 int CSR_HW_IF_CONFIG_REG_MSK_PHY_STEP ;
 int CSR_HW_IF_CONFIG_REG_MSK_PHY_TYPE ;
 int CSR_HW_IF_CONFIG_REG_POS_MAC_DASH ;
 int CSR_HW_IF_CONFIG_REG_POS_MAC_STEP ;
 int CSR_HW_IF_CONFIG_REG_POS_PHY_DASH ;
 int CSR_HW_IF_CONFIG_REG_POS_PHY_STEP ;
 int CSR_HW_IF_CONFIG_REG_POS_PHY_TYPE ;
 int CSR_HW_REV_DASH (int ) ;
 int CSR_HW_REV_STEP (int ) ;
 int FW_PHY_CFG_RADIO_DASH ;
 int FW_PHY_CFG_RADIO_DASH_POS ;
 int FW_PHY_CFG_RADIO_STEP ;
 int FW_PHY_CFG_RADIO_STEP_POS ;
 int FW_PHY_CFG_RADIO_TYPE ;
 int FW_PHY_CFG_RADIO_TYPE_POS ;
 int IWL_DEBUG_INFO (struct iwl_mvm*,char*,int,int,int) ;
 struct iwl_mvm* IWL_OP_MODE_GET_MVM (struct iwl_op_mode*) ;
 int WARN_ON (int) ;
 int iwl_set_bits_mask_prph (TYPE_2__*,int ,int ,int ) ;
 int iwl_trans_set_bits_mask (TYPE_2__*,int ,int,int) ;

__attribute__((used)) static void iwl_mvm_nic_config(struct iwl_op_mode *op_mode)
{
 struct iwl_mvm *mvm = IWL_OP_MODE_GET_MVM(op_mode);
 u8 radio_cfg_type, radio_cfg_step, radio_cfg_dash;
 u32 reg_val = 0;

 radio_cfg_type = (mvm->fw->phy_config & FW_PHY_CFG_RADIO_TYPE) >>
     FW_PHY_CFG_RADIO_TYPE_POS;
 radio_cfg_step = (mvm->fw->phy_config & FW_PHY_CFG_RADIO_STEP) >>
     FW_PHY_CFG_RADIO_STEP_POS;
 radio_cfg_dash = (mvm->fw->phy_config & FW_PHY_CFG_RADIO_DASH) >>
     FW_PHY_CFG_RADIO_DASH_POS;


 reg_val |= CSR_HW_REV_STEP(mvm->trans->hw_rev) <<
    CSR_HW_IF_CONFIG_REG_POS_MAC_STEP;
 reg_val |= CSR_HW_REV_DASH(mvm->trans->hw_rev) <<
    CSR_HW_IF_CONFIG_REG_POS_MAC_DASH;


 reg_val |= radio_cfg_type << CSR_HW_IF_CONFIG_REG_POS_PHY_TYPE;
 reg_val |= radio_cfg_step << CSR_HW_IF_CONFIG_REG_POS_PHY_STEP;
 reg_val |= radio_cfg_dash << CSR_HW_IF_CONFIG_REG_POS_PHY_DASH;

 WARN_ON((radio_cfg_type << CSR_HW_IF_CONFIG_REG_POS_PHY_TYPE) &
   ~CSR_HW_IF_CONFIG_REG_MSK_PHY_TYPE);


 reg_val |= CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI;

 iwl_trans_set_bits_mask(mvm->trans, CSR_HW_IF_CONFIG_REG,
    CSR_HW_IF_CONFIG_REG_MSK_MAC_DASH |
    CSR_HW_IF_CONFIG_REG_MSK_MAC_STEP |
    CSR_HW_IF_CONFIG_REG_MSK_PHY_TYPE |
    CSR_HW_IF_CONFIG_REG_MSK_PHY_STEP |
    CSR_HW_IF_CONFIG_REG_MSK_PHY_DASH |
    CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI |
    CSR_HW_IF_CONFIG_REG_BIT_MAC_SI,
    reg_val);

 IWL_DEBUG_INFO(mvm, "Radio type=0x%x-0x%x-0x%x\n", radio_cfg_type,
         radio_cfg_step, radio_cfg_dash);






 iwl_set_bits_mask_prph(mvm->trans, APMG_PS_CTRL_REG,
          APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS,
          ~APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS);
}
