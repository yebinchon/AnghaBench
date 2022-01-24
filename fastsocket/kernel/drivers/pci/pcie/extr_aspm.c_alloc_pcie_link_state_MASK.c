#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pcie_link_state {int /*<<< orphan*/  sibling; struct pcie_link_state* root; struct pcie_link_state* parent; int /*<<< orphan*/  children; int /*<<< orphan*/  link; struct pci_dev* pdev; } ;
struct pci_dev {struct pcie_link_state* link_state; TYPE_3__* bus; } ;
struct TYPE_6__ {TYPE_2__* parent; } ;
struct TYPE_5__ {TYPE_1__* self; } ;
struct TYPE_4__ {struct pcie_link_state* link_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ PCI_EXP_TYPE_DOWNSTREAM ; 
 int /*<<< orphan*/  FUNC1 (struct pcie_link_state*) ; 
 struct pcie_link_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link_list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static struct pcie_link_state *FUNC5(struct pci_dev *pdev)
{
	struct pcie_link_state *link;

	link = FUNC2(sizeof(*link), GFP_KERNEL);
	if (!link)
		return NULL;
	FUNC0(&link->sibling);
	FUNC0(&link->children);
	FUNC0(&link->link);
	link->pdev = pdev;
	if (FUNC4(pdev) == PCI_EXP_TYPE_DOWNSTREAM) {
		struct pcie_link_state *parent;
		parent = pdev->bus->parent->self->link_state;
		if (!parent) {
			FUNC1(link);
			return NULL;
		}
		link->parent = parent;
		FUNC3(&link->link, &parent->children);
	}
	/* Setup a pointer to the root port link */
	if (!link->parent)
		link->root = link;
	else
		link->root = link->parent->root;

	FUNC3(&link->sibling, &link_list);
	pdev->link_state = link;
	return link;
}