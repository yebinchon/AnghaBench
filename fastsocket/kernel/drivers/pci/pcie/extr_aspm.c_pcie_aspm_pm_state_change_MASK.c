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
struct pcie_link_state {int /*<<< orphan*/  root; } ;
struct pci_dev {struct pcie_link_state* link_state; } ;

/* Variables and functions */
 scalar_t__ PCI_EXP_TYPE_DOWNSTREAM ; 
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ; 
 scalar_t__ aspm_disabled ; 
 int /*<<< orphan*/  aspm_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pci_bus_sem ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pcie_link_state*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct pci_dev *pdev)
{
	struct pcie_link_state *link = pdev->link_state;

	if (aspm_disabled || !FUNC3(pdev) || !link)
		return;
	if ((FUNC4(pdev) != PCI_EXP_TYPE_ROOT_PORT) &&
	    (FUNC4(pdev) != PCI_EXP_TYPE_DOWNSTREAM))
		return;
	/*
	 * Devices changed PM state, we should recheck if latency
	 * meets all functions' requirement
	 */
	FUNC0(&pci_bus_sem);
	FUNC1(&aspm_lock);
	FUNC6(link->root);
	FUNC5(link);
	FUNC2(&aspm_lock);
	FUNC7(&pci_bus_sem);
}