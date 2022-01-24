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
struct iwl_trans_pcie {int /*<<< orphan*/  status; int /*<<< orphan*/  irq_lock; } ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  APMG_CLK_DIS_REG ; 
 int /*<<< orphan*/  APMG_CLK_VAL_DMA_CLK_RQT ; 
 int /*<<< orphan*/  CSR_GP_CNTRL ; 
 int /*<<< orphan*/  CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ ; 
 int /*<<< orphan*/  CSR_RESET ; 
 int /*<<< orphan*/  CSR_RESET_REG_FLAG_NEVO_RESET ; 
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int /*<<< orphan*/  STATUS_DEVICE_ENABLED ; 
 int /*<<< orphan*/  STATUS_HCMD_ACTIVE ; 
 int /*<<< orphan*/  STATUS_INT_ENABLED ; 
 int /*<<< orphan*/  STATUS_RFKILL ; 
 int /*<<< orphan*/  STATUS_TPOWER_PMI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static void FUNC15(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);
	unsigned long flags;

	/* tell the device to stop sending interrupts */
	FUNC11(&trans_pcie->irq_lock, flags);
	FUNC3(trans);
	FUNC12(&trans_pcie->irq_lock, flags);

	/* device going down, Stop using ICT table */
	FUNC6(trans);

	/*
	 * If a HW restart happens during firmware loading,
	 * then the firmware loading might call this function
	 * and later it might be called again due to the
	 * restart. So don't process again if the device is
	 * already dead.
	 */
	if (FUNC13(STATUS_DEVICE_ENABLED, &trans_pcie->status)) {
		FUNC8(trans);
		FUNC7(trans);

		/* Power-down device's busmaster DMA clocks */
		FUNC10(trans, APMG_CLK_DIS_REG,
			       APMG_CLK_VAL_DMA_CLK_RQT);
		FUNC14(5);
	}

	/* Make sure (redundant) we've released our request to stay awake */
	FUNC2(trans, CSR_GP_CNTRL,
		      CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ);

	/* Stop the device, and put it in low power state */
	FUNC5(trans);

	/* Upon stop, the APM issues an interrupt if HW RF kill is set.
	 * Clean again the interrupt here
	 */
	FUNC11(&trans_pcie->irq_lock, flags);
	FUNC3(trans);
	FUNC12(&trans_pcie->irq_lock, flags);

	FUNC4(trans);

	/* stop and reset the on-board processor */
	FUNC9(trans, CSR_RESET, CSR_RESET_REG_FLAG_NEVO_RESET);

	/* clear all status bits */
	FUNC1(STATUS_HCMD_ACTIVE, &trans_pcie->status);
	FUNC1(STATUS_INT_ENABLED, &trans_pcie->status);
	FUNC1(STATUS_DEVICE_ENABLED, &trans_pcie->status);
	FUNC1(STATUS_TPOWER_PMI, &trans_pcie->status);
	FUNC1(STATUS_RFKILL, &trans_pcie->status);
}