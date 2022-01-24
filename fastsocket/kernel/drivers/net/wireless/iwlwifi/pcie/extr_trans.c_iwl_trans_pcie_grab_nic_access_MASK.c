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
typedef  int /*<<< orphan*/  u32 ;
struct iwl_trans_pcie {int /*<<< orphan*/  reg_lock; } ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_GP_CNTRL ; 
 int CSR_GP_CNTRL_REG_FLAG_GOING_TO_SLEEP ; 
 int /*<<< orphan*/  CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ ; 
 int CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY ; 
 int /*<<< orphan*/  CSR_GP_CNTRL_REG_VAL_MAC_ACCESS_EN ; 
 int /*<<< orphan*/  CSR_RESET ; 
 int /*<<< orphan*/  CSR_RESET_REG_FLAG_FORCE_NMI ; 
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static bool FUNC10(struct iwl_trans *trans, bool silent,
						unsigned long *flags)
{
	int ret;
	struct iwl_trans_pcie *pcie_trans = FUNC0(trans);
	FUNC7(&pcie_trans->reg_lock, *flags);

	/* this bit wakes up the NIC */
	FUNC2(trans, CSR_GP_CNTRL,
				 CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ);

	/*
	 * These bits say the device is running, and should keep running for
	 * at least a short while (at least as long as MAC_ACCESS_REQ stays 1),
	 * but they do not indicate that embedded SRAM is restored yet;
	 * 3945 and 4965 have volatile SRAM, and must save/restore contents
	 * to/from host DRAM when sleeping/waking for power-saving.
	 * Each direction takes approximately 1/4 millisecond; with this
	 * overhead, it's a good idea to grab and hold MAC_ACCESS_REQUEST if a
	 * series of register accesses are expected (e.g. reading Event Log),
	 * to keep device from sleeping.
	 *
	 * CSR_UCODE_DRV_GP1 register bit MAC_SLEEP == 0 indicates that
	 * SRAM is okay/restored.  We don't check that here because this call
	 * is just for hardware register access; but GP1 MAC_SLEEP check is a
	 * good idea before accessing 3945/4965 SRAM (e.g. reading Event Log).
	 *
	 * 5000 series and later (including 1000 series) have non-volatile SRAM,
	 * and do not save/restore SRAM when power cycling.
	 */
	ret = FUNC4(trans, CSR_GP_CNTRL,
			   CSR_GP_CNTRL_REG_VAL_MAC_ACCESS_EN,
			   (CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY |
			    CSR_GP_CNTRL_REG_FLAG_GOING_TO_SLEEP), 15000);
	if (FUNC9(ret < 0)) {
		FUNC6(trans, CSR_RESET, CSR_RESET_REG_FLAG_FORCE_NMI);
		if (!silent) {
			u32 val = FUNC5(trans, CSR_GP_CNTRL);
			FUNC1(1,
				  "Timeout waiting for hardware access (CSR_GP_CNTRL 0x%08x)\n",
				  val);
			FUNC8(&pcie_trans->reg_lock, *flags);
			return false;
		}
	}

	/*
	 * Fool sparse by faking we release the lock - sparse will
	 * track nic_access anyway.
	 */
	FUNC3(&pcie_trans->reg_lock);
	return true;
}