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
 int PCI_COMMAND_INVALIDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

int
FUNC4(struct pci_dev *dev)
{
	int rc;
	u16 cmd;

	rc = FUNC2(dev);
	if (rc)
		return rc;

	FUNC1(dev, PCI_COMMAND, &cmd);
	if (! (cmd & PCI_COMMAND_INVALIDATE)) {
		FUNC0(&dev->dev, "enabling Mem-Wr-Inval\n");
		cmd |= PCI_COMMAND_INVALIDATE;
		FUNC3(dev, PCI_COMMAND, cmd);
	}
	
	return 0;
}