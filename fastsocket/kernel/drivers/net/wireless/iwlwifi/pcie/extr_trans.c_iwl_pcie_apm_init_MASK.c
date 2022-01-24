#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iwl_trans_pcie {int /*<<< orphan*/  status; } ;
struct iwl_trans {TYPE_2__* cfg; } ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {scalar_t__ pll_cfg_val; } ;

/* Variables and functions */
 int /*<<< orphan*/  APMG_CLK_EN_REG ; 
 int /*<<< orphan*/  APMG_CLK_VAL_DMA_CLK_RQT ; 
 int /*<<< orphan*/  APMG_PCIDEV_STT_REG ; 
 int /*<<< orphan*/  APMG_PCIDEV_STT_VAL_L1_ACT_DIS ; 
 int /*<<< orphan*/  CSR_ANA_PLL_CFG ; 
 int /*<<< orphan*/  CSR_DBG_HPET_MEM_REG ; 
 scalar_t__ CSR_DBG_HPET_MEM_REG_VAL ; 
 int /*<<< orphan*/  CSR_GIO_CHICKEN_BITS ; 
 scalar_t__ CSR_GIO_CHICKEN_BITS_REG_BIT_DIS_L0S_EXIT_TIMER ; 
 scalar_t__ CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX ; 
 int /*<<< orphan*/  CSR_GP_CNTRL ; 
 scalar_t__ CSR_GP_CNTRL_REG_FLAG_INIT_DONE ; 
 int /*<<< orphan*/  CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY ; 
 int /*<<< orphan*/  CSR_HW_IF_CONFIG_REG ; 
 scalar_t__ CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  STATUS_DEVICE_ENABLED ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*) ; 
 int FUNC3 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	int ret = 0;
	FUNC0(trans, "Init card's basic functions\n");

	/*
	 * Use "set_bit" below rather than "write", to preserve any hardware
	 * bits already set by default after reset.
	 */

	/* Disable L0S exit timer (platform NMI Work/Around) */
	FUNC4(trans, CSR_GIO_CHICKEN_BITS,
		    CSR_GIO_CHICKEN_BITS_REG_BIT_DIS_L0S_EXIT_TIMER);

	/*
	 * Disable L0s without affecting L1;
	 *  don't wait for ICH L0s (ICH bug W/A)
	 */
	FUNC4(trans, CSR_GIO_CHICKEN_BITS,
		    CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX);

	/* Set FH wait threshold to maximum (HW error during stress W/A) */
	FUNC4(trans, CSR_DBG_HPET_MEM_REG, CSR_DBG_HPET_MEM_REG_VAL);

	/*
	 * Enable HAP INTA (interrupt from management bus) to
	 * wake device's PCI Express link L1a -> L0s
	 */
	FUNC4(trans, CSR_HW_IF_CONFIG_REG,
		    CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A);

	FUNC2(trans);

	/* Configure analog phase-lock-loop before activating to D0A */
	if (trans->cfg->base_params->pll_cfg_val)
		FUNC4(trans, CSR_ANA_PLL_CFG,
			    trans->cfg->base_params->pll_cfg_val);

	/*
	 * Set "initialization complete" bit to move adapter from
	 * D0U* --> D0A* (powered-up active) state.
	 */
	FUNC4(trans, CSR_GP_CNTRL, CSR_GP_CNTRL_REG_FLAG_INIT_DONE);

	/*
	 * Wait for clock stabilization; once stabilized, access to
	 * device-internal resources is supported, e.g. iwl_write_prph()
	 * and accesses to uCode SRAM.
	 */
	ret = FUNC3(trans, CSR_GP_CNTRL,
			   CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY,
			   CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY, 25000);
	if (ret < 0) {
		FUNC0(trans, "Failed to init the card\n");
		goto out;
	}

	/*
	 * Enable DMA clock and wait for it to stabilize.
	 *
	 * Write to "CLK_EN_REG"; "1" bits enable clocks, while "0" bits
	 * do not disable clocks.  This preserves any hardware bits already
	 * set by default in "CLK_CTRL_REG" after reset.
	 */
	FUNC6(trans, APMG_CLK_EN_REG, APMG_CLK_VAL_DMA_CLK_RQT);
	FUNC8(20);

	/* Disable L1-Active */
	FUNC5(trans, APMG_PCIDEV_STT_REG,
			  APMG_PCIDEV_STT_VAL_L1_ACT_DIS);

	FUNC7(STATUS_DEVICE_ENABLED, &trans_pcie->status);

out:
	return ret;
}