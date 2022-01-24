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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *dev)
{
	/* MSI/MSI-X list */
	FUNC4(dev);

	/* Buffers for saving PCIe and PCI-X capabilities */
	FUNC0(dev);

	/* Power Management */
	FUNC5(dev);
	FUNC7(dev);

	/* Vital Product Data */
	FUNC6(dev);

	/* Alternative Routing-ID Forwarding */
	FUNC2(dev);

	/* Single Root I/O Virtualization */
	FUNC3(dev);

	/* Enable ACS P2P upstream forwarding */
	FUNC1(dev);
}