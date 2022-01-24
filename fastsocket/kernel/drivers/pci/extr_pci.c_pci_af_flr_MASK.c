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
typedef  int u8 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOTTY ; 
 scalar_t__ PCI_AF_CAP ; 
 int PCI_AF_CAP_FLR ; 
 int PCI_AF_CAP_TP ; 
 scalar_t__ PCI_AF_CTRL ; 
 int /*<<< orphan*/  PCI_AF_CTRL_FLR ; 
 scalar_t__ PCI_AF_STATUS ; 
 int PCI_AF_STATUS_TP ; 
 int /*<<< orphan*/  PCI_CAP_ID_AF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *dev, int probe)
{
	int i;
	int pos;
	u8 cap;
	u8 status;

	pos = FUNC2(dev, PCI_CAP_ID_AF);
	if (!pos)
		return -ENOTTY;

	FUNC3(dev, pos + PCI_AF_CAP, &cap);
	if (!(cap & PCI_AF_CAP_TP) || !(cap & PCI_AF_CAP_FLR))
		return -ENOTTY;

	if (probe)
		return 0;

	/* Wait for Transaction Pending bit clean */
	for (i = 0; i < 4; i++) {
		if (i)
			FUNC1((1 << (i - 1)) * 100);

		FUNC3(dev, pos + PCI_AF_STATUS, &status);
		if (!(status & PCI_AF_STATUS_TP))
			goto clear;
	}

	FUNC0(&dev->dev, "transaction is not cleared; "
			"proceeding with reset anyway\n");

clear:
	FUNC4(dev, pos + PCI_AF_CTRL, PCI_AF_CTRL_FLR);
	FUNC1(100);

	return 0;
}