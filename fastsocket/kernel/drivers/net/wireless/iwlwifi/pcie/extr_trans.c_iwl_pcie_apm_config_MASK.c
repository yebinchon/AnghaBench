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
typedef  int u16 ;
struct iwl_trans_pcie {int /*<<< orphan*/  pci_dev; } ;
struct iwl_trans {int pm_support; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_GIO_REG ; 
 int /*<<< orphan*/  CSR_GIO_REG_VAL_L0S_ENABLED ; 
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int /*<<< orphan*/  PCI_EXP_LNKCTL ; 
 int PCI_EXP_LNKCTL_ASPM_L0S ; 
 int PCI_EXP_LNKCTL_ASPM_L1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC5(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);
	u16 lctl;

	/*
	 * HW bug W/A for instability in PCIe bus L0S->L1 transition.
	 * Check if BIOS (or OS) enabled L1-ASPM on this device.
	 * If so (likely), disable L0S, so device moves directly L0->L1;
	 *    costs negligible amount of power savings.
	 * If not (unlikely), enable L0S, so there is at least some
	 *    power savings, even without L1.
	 */
	FUNC4(trans_pcie->pci_dev, PCI_EXP_LNKCTL, &lctl);
	if (lctl & PCI_EXP_LNKCTL_ASPM_L1) {
		/* L1-ASPM enabled; disable(!) L0S */
		FUNC3(trans, CSR_GIO_REG, CSR_GIO_REG_VAL_L0S_ENABLED);
		FUNC1(trans->dev, "L1 Enabled; Disabling L0S\n");
	} else {
		/* L1-ASPM disabled; enable(!) L0S */
		FUNC2(trans, CSR_GIO_REG, CSR_GIO_REG_VAL_L0S_ENABLED);
		FUNC1(trans->dev, "L1 Disabled; Enabling L0S\n");
	}
	trans->pm_support = !(lctl & PCI_EXP_LNKCTL_ASPM_L0S);
}