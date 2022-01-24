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
 int /*<<< orphan*/  PCI_COMMAND ; 
 int /*<<< orphan*/  PCI_COMMAND_INTX_DISABLE ; 
 int FUNC0 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct pci_dev *dev)
{
	int rc;

	rc = FUNC0(dev, 1);
	if (rc)
		return rc;

	FUNC2(dev);

	/*
	 * both INTx and MSI are disabled after the Interrupt Disable bit
	 * is set and the Bus Master bit is cleared.
	 */
	FUNC3(dev, PCI_COMMAND, PCI_COMMAND_INTX_DISABLE);

	rc = FUNC0(dev, 0);

	FUNC1(dev);

	return rc;
}