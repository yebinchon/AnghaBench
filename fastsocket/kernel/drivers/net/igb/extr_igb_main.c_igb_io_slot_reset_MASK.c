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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {struct e1000_hw hw; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_WUS ; 
 int /*<<< orphan*/  PCI_D3cold ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct igb_adapter*) ; 
 struct igb_adapter* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct pci_dev*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static pci_ers_result_t FUNC11(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC6(pdev);
	struct igb_adapter *adapter = FUNC2(netdev);
	struct e1000_hw *hw = &adapter->hw;
	pci_ers_result_t result;
	int err;

	if (FUNC4(pdev)) {
		FUNC0(&pdev->dev,
			"Cannot re-enable PCI device after reset.\n");
		result = PCI_ERS_RESULT_DISCONNECT;
	} else {
		FUNC9(pdev);
		FUNC7(pdev);
		FUNC8(pdev);

		FUNC5(pdev, PCI_D3hot, 0);
		FUNC5(pdev, PCI_D3cold, 0);

		FUNC1(adapter);
		FUNC10(E1000_WUS, ~0);
		result = PCI_ERS_RESULT_RECOVERED;
	}

	err = FUNC3(pdev);
	if (err) {
		FUNC0(&pdev->dev,
			"pci_cleanup_aer_uncorrect_error_status failed 0x%0x\n",
			err);
		/* non-fatal, continue */
	}

	return result;
}