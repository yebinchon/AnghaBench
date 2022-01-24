#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iwl_trans_pcie {int /*<<< orphan*/  wait_command_queue; int /*<<< orphan*/  status; } ;
struct iwl_trans {int /*<<< orphan*/  op_mode; TYPE_1__* cfg; } ;
struct TYPE_2__ {scalar_t__ internal_wimax_coex; } ;

/* Variables and functions */
 int /*<<< orphan*/  APMG_CLK_CTRL_REG ; 
 int /*<<< orphan*/  APMG_PS_CTRL_REG ; 
 int APMG_PS_CTRL_VAL_RESET_REQ ; 
 int APMS_CLK_VAL_MRB_FUNC_MODE ; 
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int /*<<< orphan*/  STATUS_FW_ERROR ; 
 int /*<<< orphan*/  STATUS_HCMD_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);

	/* W/A for WiFi/WiMAX coex and WiMAX own the RF */
	if (trans->cfg->internal_wimax_coex &&
	    (!(FUNC6(trans, APMG_CLK_CTRL_REG) &
			     APMS_CLK_VAL_MRB_FUNC_MODE) ||
	     (FUNC6(trans, APMG_PS_CTRL_REG) &
			    APMG_PS_CTRL_VAL_RESET_REQ))) {
		FUNC1(STATUS_HCMD_ACTIVE, &trans_pcie->status);
		FUNC3(trans->op_mode);
		FUNC10(&trans_pcie->wait_command_queue);
		return;
	}

	FUNC4(trans);
	FUNC5(trans, NULL);

	FUNC9(STATUS_FW_ERROR, &trans_pcie->status);
	FUNC1(STATUS_HCMD_ACTIVE, &trans_pcie->status);
	FUNC10(&trans_pcie->wait_command_queue);

	FUNC7();
	FUNC2(trans->op_mode);
	FUNC8();
}