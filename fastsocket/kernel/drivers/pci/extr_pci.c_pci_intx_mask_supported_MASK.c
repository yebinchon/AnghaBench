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
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_INTX_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

bool FUNC5(struct pci_dev *dev)
{
	bool mask_supported = false;
	u16 orig, new;

	FUNC1(dev);

	FUNC3(dev, PCI_COMMAND, &orig);
	FUNC4(dev, PCI_COMMAND,
			      orig ^ PCI_COMMAND_INTX_DISABLE);
	FUNC3(dev, PCI_COMMAND, &new);

	/*
	 * There's no way to protect against hardware bugs or detect them
	 * reliably, but as long as we know what the value should be, let's
	 * go ahead and check it.
	 */
	if ((new ^ orig) & ~PCI_COMMAND_INTX_DISABLE) {
		FUNC0(&dev->dev, "Command register changed from "
			"0x%x to 0x%x: driver or hardware bug?\n", orig, new);
	} else if ((new ^ orig) & PCI_COMMAND_INTX_DISABLE) {
		mask_supported = true;
		FUNC4(dev, PCI_COMMAND, orig);
	}

	FUNC2(dev);
	return mask_supported;
}