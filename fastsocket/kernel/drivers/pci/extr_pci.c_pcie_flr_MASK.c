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
typedef  int u32 ;
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOTTY ; 
 int /*<<< orphan*/  PCI_EXP_DEVCAP ; 
 int PCI_EXP_DEVCAP_FLR ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL_BCR_FLR ; 
 int /*<<< orphan*/  PCI_EXP_DEVSTA ; 
 int PCI_EXP_DEVSTA_TRPND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *dev, int probe)
{
	int i;
	u32 cap;
	u16 status;

	FUNC2(dev, PCI_EXP_DEVCAP, &cap);
	if (!(cap & PCI_EXP_DEVCAP_FLR))
		return -ENOTTY;

	if (probe)
		return 0;

	/* Wait for Transaction Pending bit clean */
	for (i = 0; i < 4; i++) {
		if (i)
			FUNC1((1 << (i - 1)) * 100);

		FUNC3(dev, PCI_EXP_DEVSTA, &status);
		if (!(status & PCI_EXP_DEVSTA_TRPND))
			goto clear;
	}

	FUNC0(&dev->dev, "transaction is not cleared; "
			"proceeding with reset anyway\n");

clear:
	FUNC4(dev, PCI_EXP_DEVCTL, PCI_EXP_DEVCTL_BCR_FLR);

	FUNC1(100);

	return 0;
}