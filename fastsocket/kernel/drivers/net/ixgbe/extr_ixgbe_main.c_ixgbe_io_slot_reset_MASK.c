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
struct pci_dev {int dummy; } ;
struct ixgbe_adapter {int /*<<< orphan*/  hw; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_WUS ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 
 int FUNC4 (struct pci_dev*) ; 
 scalar_t__ FUNC5 (struct pci_dev*) ; 
 struct ixgbe_adapter* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  probe ; 

__attribute__((used)) static pci_ers_result_t FUNC11(struct pci_dev *pdev)
{
	struct ixgbe_adapter *adapter = FUNC6(pdev);
	pci_ers_result_t result;
	int err;

	if (FUNC5(pdev)) {
		FUNC2(probe, "Cannot re-enable PCI device after reset.\n");
		result = PCI_ERS_RESULT_DISCONNECT;
	} else {
		FUNC9(pdev);
		FUNC7(pdev);
		FUNC8(pdev);

		FUNC10(pdev, false);

		FUNC3(adapter);
		FUNC0(&adapter->hw, IXGBE_WUS, ~0);
		result = PCI_ERS_RESULT_RECOVERED;
	}

	err = FUNC4(pdev);
	if (err) {
		FUNC1("pci_cleanup_aer_uncorrect_error_status "
			  "failed 0x%0x\n", err);
		/* non-fatal, continue */
	}

	return result;
}