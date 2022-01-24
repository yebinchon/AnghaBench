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
 int ENODEV ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_SRIOV ; 
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*,int) ; 

int FUNC3(struct pci_dev *dev)
{
	int pos;

	if (!FUNC1(dev))
		return -ENODEV;

	pos = FUNC0(dev, PCI_EXT_CAP_ID_SRIOV);
	if (pos)
		return FUNC2(dev, pos);

	return -ENODEV;
}