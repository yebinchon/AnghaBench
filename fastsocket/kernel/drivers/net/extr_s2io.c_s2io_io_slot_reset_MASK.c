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
struct s2io_nic {int dummy; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 struct s2io_nic* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 
 struct net_device* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct s2io_nic*) ; 

__attribute__((used)) static pci_ers_result_t FUNC6(struct pci_dev *pdev)
{
	struct net_device *netdev = FUNC2(pdev);
	struct s2io_nic *sp = FUNC0(netdev);

	if (FUNC1(pdev)) {
		FUNC4("Cannot re-enable PCI device after reset.\n");
		return PCI_ERS_RESULT_DISCONNECT;
	}

	FUNC3(pdev);
	FUNC5(sp);

	return PCI_ERS_RESULT_RECOVERED;
}