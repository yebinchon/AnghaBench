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
struct pci_dev {int /*<<< orphan*/  devfn; TYPE_2__* bus; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {scalar_t__ read; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_PCI_BAR1_CONTROL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ bcma_core_pci_hostmode_read_config ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *dev)
{
	if (dev->bus->ops->read != bcma_core_pci_hostmode_read_config) {
		/* This is not a device on the PCI-core bridge. */
		return;
	}
	if (FUNC0(dev->devfn) != 0)
		return;

	FUNC6("PCI: Fixing up bridge %s\n", FUNC1(dev));

	/* Enable PCI bridge bus mastering and memory space */
	FUNC2(dev);
	if (FUNC4(dev, ~0) < 0) {
		FUNC5("PCI: BCMA bridge enable failed\n");
		return;
	}

	/* Enable PCI bridge BAR1 prefetch and burst */
	FUNC3(dev, BCMA_PCI_BAR1_CONTROL, 3);
}