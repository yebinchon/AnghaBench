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
typedef  scalar_t__ u32 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ PCI_ERR_UNCOR_STATUS ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_ERR ; 
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,scalar_t__) ; 

int FUNC3(struct pci_dev *dev)
{
	int pos;
	u32 status;

	pos = FUNC0(dev, PCI_EXT_CAP_ID_ERR);
	if (!pos)
		return -EIO;

	FUNC1(dev, pos + PCI_ERR_UNCOR_STATUS, &status);
	if (status)
		FUNC2(dev, pos + PCI_ERR_UNCOR_STATUS, status);

	return 0;
}