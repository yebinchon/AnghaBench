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
struct pci_dev {int /*<<< orphan*/  dev; scalar_t__ pm_cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 scalar_t__ PCI_PM_CTRL ; 
 int PCI_PM_CTRL_PME_ENABLE ; 
 int PCI_PM_CTRL_PME_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,int) ; 

void FUNC3(struct pci_dev *dev, bool enable)
{
	u16 pmcsr;

	if (!dev->pm_cap)
		return;

	FUNC1(dev, dev->pm_cap + PCI_PM_CTRL, &pmcsr);
	/* Clear PME_Status by writing 1 to it and enable PME# */
	pmcsr |= PCI_PM_CTRL_PME_STATUS | PCI_PM_CTRL_PME_ENABLE;
	if (!enable)
		pmcsr &= ~PCI_PM_CTRL_PME_ENABLE;

	FUNC2(dev, dev->pm_cap + PCI_PM_CTRL, pmcsr);

	FUNC0(KERN_INFO, &dev->dev, "PME# %s\n",
			enable ? "enabled" : "disabled");
}