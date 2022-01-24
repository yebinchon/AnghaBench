#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct iwl_op_mode {int dummy; } ;
struct iwl_mvm {TYPE_2__* trans; TYPE_1__* fw; } ;
struct TYPE_5__ {int /*<<< orphan*/  hw_rev; } ;
struct TYPE_4__ {int phy_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS ; 
 int /*<<< orphan*/  APMG_PS_CTRL_REG ; 
 int /*<<< orphan*/  CSR_HW_IF_CONFIG_REG ; 
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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FW_PHY_CFG_RADIO_DASH ; 
 int FW_PHY_CFG_RADIO_DASH_POS ; 
 int FW_PHY_CFG_RADIO_STEP ; 
 int FW_PHY_CFG_RADIO_STEP_POS ; 
 int FW_PHY_CFG_RADIO_TYPE ; 
 int FW_PHY_CFG_RADIO_TYPE_POS ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*,int,int,int) ; 
 struct iwl_mvm* FUNC3 (struct iwl_op_mode*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC7(struct iwl_op_mode *op_mode)
{
	struct iwl_mvm *mvm = FUNC3(op_mode);
	u8 radio_cfg_type, radio_cfg_step, radio_cfg_dash;
	u32 reg_val = 0;

	radio_cfg_type = (mvm->fw->phy_config & FW_PHY_CFG_RADIO_TYPE) >>
			  FW_PHY_CFG_RADIO_TYPE_POS;
	radio_cfg_step = (mvm->fw->phy_config & FW_PHY_CFG_RADIO_STEP) >>
			  FW_PHY_CFG_RADIO_STEP_POS;
	radio_cfg_dash = (mvm->fw->phy_config & FW_PHY_CFG_RADIO_DASH) >>
			  FW_PHY_CFG_RADIO_DASH_POS;

	/* SKU control */
	reg_val |= FUNC1(mvm->trans->hw_rev) <<
				CSR_HW_IF_CONFIG_REG_POS_MAC_STEP;
	reg_val |= FUNC0(mvm->trans->hw_rev) <<
				CSR_HW_IF_CONFIG_REG_POS_MAC_DASH;

	/* radio configuration */
	reg_val |= radio_cfg_type << CSR_HW_IF_CONFIG_REG_POS_PHY_TYPE;
	reg_val |= radio_cfg_step << CSR_HW_IF_CONFIG_REG_POS_PHY_STEP;
	reg_val |= radio_cfg_dash << CSR_HW_IF_CONFIG_REG_POS_PHY_DASH;

	FUNC4((radio_cfg_type << CSR_HW_IF_CONFIG_REG_POS_PHY_TYPE) &
		 ~CSR_HW_IF_CONFIG_REG_MSK_PHY_TYPE);

	/* silicon bits */
	reg_val |= CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI;

	FUNC6(mvm->trans, CSR_HW_IF_CONFIG_REG,
				CSR_HW_IF_CONFIG_REG_MSK_MAC_DASH |
				CSR_HW_IF_CONFIG_REG_MSK_MAC_STEP |
				CSR_HW_IF_CONFIG_REG_MSK_PHY_TYPE |
				CSR_HW_IF_CONFIG_REG_MSK_PHY_STEP |
				CSR_HW_IF_CONFIG_REG_MSK_PHY_DASH |
				CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI |
				CSR_HW_IF_CONFIG_REG_BIT_MAC_SI,
				reg_val);

	FUNC2(mvm, "Radio type=0x%x-0x%x-0x%x\n", radio_cfg_type,
		       radio_cfg_step, radio_cfg_dash);

	/*
	 * W/A : NIC is stuck in a reset state after Early PCIe power off
	 * (PCIe power is lost before PERST# is asserted), causing ME FW
	 * to lose ownership and not being able to obtain it back.
	 */
	FUNC5(mvm->trans, APMG_PS_CTRL_REG,
			       APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS,
			       ~APMG_PS_CTRL_EARLY_PWR_OFF_RESET_DIS);
}