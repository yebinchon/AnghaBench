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
struct pci_dev {TYPE_1__* bus; int /*<<< orphan*/  devfn; } ;
struct TYPE_2__ {struct pci_dev* self; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL2 ; 
 int /*<<< orphan*/  PCI_EXP_LTR_EN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct pci_dev *dev)
{
	int ret;

	/* Only primary function can enable/disable LTR */
	if (FUNC0(dev->devfn) != 0)
		return -EINVAL;

	if (!FUNC1(dev))
		return -ENOTSUPP;

	/* Enable upstream ports first */
	if (dev->bus->self) {
		ret = FUNC3(dev->bus->self);
		if (ret)
			return ret;
	}

	return FUNC2(dev, PCI_EXP_DEVCTL2, PCI_EXP_LTR_EN);
}