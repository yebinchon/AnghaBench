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
struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_2__ {struct pci_dev* self; } ;

/* Variables and functions */
 scalar_t__ PCI_EXP_TYPE_PCI_BRIDGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 

struct pci_dev *
FUNC4(struct pci_dev *pdev)
{
	struct pci_dev *tmp = NULL;

	if (FUNC1(pdev))
		return NULL;
	while (1) {
		if (FUNC2(pdev->bus))
			break;
		pdev = pdev->bus->self;
		/* a p2p bridge */
		if (!FUNC1(pdev)) {
			tmp = pdev;
			continue;
		}
		/* PCI device should connect to a PCIe bridge */
		if (FUNC3(pdev) != PCI_EXP_TYPE_PCI_BRIDGE) {
			/* Busted hardware? */
			FUNC0(1);
			return NULL;
		}
		return pdev;
	}

	return tmp;
}