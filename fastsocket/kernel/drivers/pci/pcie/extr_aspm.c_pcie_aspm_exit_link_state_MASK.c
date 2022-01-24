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
struct pcie_link_state {int /*<<< orphan*/  link; int /*<<< orphan*/  sibling; struct pcie_link_state* parent; struct pcie_link_state* root; } ;
struct pci_dev {struct pcie_link_state* link_state; TYPE_2__* subordinate; int /*<<< orphan*/  bus_list; TYPE_1__* bus; } ;
struct TYPE_4__ {int /*<<< orphan*/  devices; } ;
struct TYPE_3__ {struct pci_dev* self; } ;

/* Variables and functions */
 scalar_t__ PCI_EXP_TYPE_DOWNSTREAM ; 
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ; 
 int /*<<< orphan*/  aspm_clear_state ; 
 scalar_t__ aspm_disabled ; 
 int /*<<< orphan*/  aspm_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pcie_link_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pci_bus_sem ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 scalar_t__ FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pcie_link_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pcie_link_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct pcie_link_state*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct pci_dev *pdev)
{
	struct pci_dev *parent = pdev->bus->self;
	struct pcie_link_state *link, *root, *parent_link;

	if ((aspm_disabled && !aspm_clear_state) || !FUNC6(pdev) ||
	    !parent || !parent->link_state)
		return;
	if ((FUNC7(parent) != PCI_EXP_TYPE_ROOT_PORT) &&
	    (FUNC7(parent) != PCI_EXP_TYPE_DOWNSTREAM))
		return;

	FUNC0(&pci_bus_sem);
	FUNC4(&aspm_lock);
	/*
	 * All PCIe functions are in one slot, remove one function will remove
	 * the whole slot, so just wait until we are the last function left.
	 */
	if (!FUNC3(&pdev->bus_list, &parent->subordinate->devices))
		goto out;

	link = parent->link_state;
	root = link->root;
	parent_link = link->parent;

	/* All functions are removed, so just disable ASPM for the link */
	FUNC8(link, 0);
	FUNC2(&link->sibling);
	FUNC2(&link->link);
	/* Clock PM is for endpoint device */
	FUNC1(link);

	/* Recheck latencies and configure upstream links */
	if (parent_link) {
		FUNC10(root);
		FUNC9(parent_link);
	}
out:
	FUNC5(&aspm_lock);
	FUNC11(&pci_bus_sem);
}