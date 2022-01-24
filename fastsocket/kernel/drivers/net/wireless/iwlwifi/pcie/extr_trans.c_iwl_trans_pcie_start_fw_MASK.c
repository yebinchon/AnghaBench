#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct iwl_trans_pcie {int /*<<< orphan*/  status; } ;
struct iwl_trans {int /*<<< orphan*/  op_mode; } ;
struct fw_img {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_INT ; 
 int CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED ; 
 int /*<<< orphan*/  CSR_UCODE_DRV_GP1_CLR ; 
 int CSR_UCODE_SW_BIT_RFKILL ; 
 int EIO ; 
 int ERFKILL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,char*) ; 
 int /*<<< orphan*/  STATUS_FW_ERROR ; 
 int /*<<< orphan*/  STATUS_RFKILL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*) ; 
 int FUNC6 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct iwl_trans*,struct fw_img const*) ; 
 int FUNC9 (struct iwl_trans*) ; 
 scalar_t__ FUNC10 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct iwl_trans *trans,
				   const struct fw_img *fw, bool run_in_rfkill)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	int ret;
	bool hw_rfkill;

	/* This may fail if AMT took ownership of the device */
	if (FUNC10(trans)) {
		FUNC2(trans, "Exit HW not ready\n");
		return -EIO;
	}

	FUNC3(STATUS_FW_ERROR, &trans_pcie->status);

	FUNC5(trans);

	/* If platform's RF_KILL switch is NOT set to KILL */
	hw_rfkill = FUNC6(trans);
	if (hw_rfkill)
		FUNC12(STATUS_RFKILL, &trans_pcie->status);
	else
		FUNC3(STATUS_RFKILL, &trans_pcie->status);
	FUNC7(trans->op_mode, hw_rfkill);
	if (hw_rfkill && !run_in_rfkill)
		return -ERFKILL;

	FUNC11(trans, CSR_INT, 0xFFFFFFFF);

	ret = FUNC9(trans);
	if (ret) {
		FUNC0(trans, "Unable to init nic\n");
		return ret;
	}

	/* make sure rfkill handshake bits are cleared */
	FUNC11(trans, CSR_UCODE_DRV_GP1_CLR, CSR_UCODE_SW_BIT_RFKILL);
	FUNC11(trans, CSR_UCODE_DRV_GP1_CLR,
		    CSR_UCODE_DRV_GP1_BIT_CMD_BLOCKED);

	/* clear (again), then enable host interrupts */
	FUNC11(trans, CSR_INT, 0xFFFFFFFF);
	FUNC4(trans);

	/* really make sure rfkill handshake bits are cleared */
	FUNC11(trans, CSR_UCODE_DRV_GP1_CLR, CSR_UCODE_SW_BIT_RFKILL);
	FUNC11(trans, CSR_UCODE_DRV_GP1_CLR, CSR_UCODE_SW_BIT_RFKILL);

	/* Load the given image to the HW */
	return FUNC8(trans, fw);
}