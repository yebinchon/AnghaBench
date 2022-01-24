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
struct pcie_link_state {scalar_t__ clkpm_capable; int /*<<< orphan*/  aspm_disable; } ;
struct pci_dev {struct pcie_link_state* link_state; TYPE_1__* bus; } ;
struct TYPE_2__ {struct pci_dev* self; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASPM_STATE_L0S ; 
 int /*<<< orphan*/  ASPM_STATE_L1 ; 
 int PCIE_LINK_STATE_CLKPM ; 
 int PCIE_LINK_STATE_L0S ; 
 int PCIE_LINK_STATE_L1 ; 
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
 int /*<<< orphan*/  FUNC5 (struct pcie_link_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pcie_link_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pcie_link_state*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev, int state, bool sem)
{
	struct pci_dev *parent = pdev->bus->self;
	struct pcie_link_state *link;

	if (aspm_disabled || !FUNC3(pdev))
		return;
	if (FUNC4(pdev) == PCI_EXP_TYPE_ROOT_PORT ||
	    FUNC4(pdev) == PCI_EXP_TYPE_DOWNSTREAM)
		parent = pdev;
	if (!parent || !parent->link_state)
		return;

	if (sem)
		FUNC0(&pci_bus_sem);
	FUNC1(&aspm_lock);
	link = parent->link_state;
	if (state & PCIE_LINK_STATE_L0S)
		link->aspm_disable |= ASPM_STATE_L0S;
	if (state & PCIE_LINK_STATE_L1)
		link->aspm_disable |= ASPM_STATE_L1;
	FUNC5(link, FUNC7(link));

	if (state & PCIE_LINK_STATE_CLKPM) {
		link->clkpm_capable = 0;
		FUNC6(link, 0);
	}
	FUNC2(&aspm_lock);
	if (sem)
		FUNC8(&pci_bus_sem);
}