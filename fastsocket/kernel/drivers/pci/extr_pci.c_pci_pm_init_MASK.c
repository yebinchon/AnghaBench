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
struct pci_dev {int wakeup_prepared; int pm_cap; int d1_support; int d2_support; int pme_support; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  PCI_CAP_ID_PM ; 
 int PCI_PM_CAP_D1 ; 
 int PCI_PM_CAP_D2 ; 
 int PCI_PM_CAP_PME_D0 ; 
 int PCI_PM_CAP_PME_D1 ; 
 int PCI_PM_CAP_PME_D2 ; 
 int PCI_PM_CAP_PME_D3 ; 
 int PCI_PM_CAP_PME_D3cold ; 
 int PCI_PM_CAP_PME_MASK ; 
 int PCI_PM_CAP_PME_SHIFT ; 
 int PCI_PM_CAP_VER_MASK ; 
 scalar_t__ PCI_PM_PMC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,scalar_t__,int*) ; 

void FUNC9(struct pci_dev *dev)
{
	int pm;
	u16 pmc;

	dev->wakeup_prepared = false;
	dev->pm_cap = 0;

	/* find PCI PM capability in list */
	pm = FUNC5(dev, PCI_CAP_ID_PM);
	if (!pm)
		return;
	/* Check device's ability to generate PME# */
	FUNC8(dev, pm + PCI_PM_PMC, &pmc);

	if ((pmc & PCI_PM_CAP_VER_MASK) > 3) {
		FUNC0(&dev->dev, "unsupported PM cap regs version (%u)\n",
			pmc & PCI_PM_CAP_VER_MASK);
		return;
	}

	dev->pm_cap = pm;

	dev->d1_support = false;
	dev->d2_support = false;
	if (!FUNC6(dev)) {
		if (pmc & PCI_PM_CAP_D1)
			dev->d1_support = true;
		if (pmc & PCI_PM_CAP_D2)
			dev->d2_support = true;

		if (dev->d1_support || dev->d2_support)
			FUNC2(KERN_DEBUG, &dev->dev, "supports%s%s\n",
				   dev->d1_support ? " D1" : "",
				   dev->d2_support ? " D2" : "");
	}

	pmc &= PCI_PM_CAP_PME_MASK;
	if (pmc) {
		FUNC1(&dev->dev, "PME# supported from%s%s%s%s%s\n",
			 (pmc & PCI_PM_CAP_PME_D0) ? " D0" : "",
			 (pmc & PCI_PM_CAP_PME_D1) ? " D1" : "",
			 (pmc & PCI_PM_CAP_PME_D2) ? " D2" : "",
			 (pmc & PCI_PM_CAP_PME_D3) ? " D3hot" : "",
			 (pmc & PCI_PM_CAP_PME_D3cold) ? " D3cold" : "");
		dev->pme_support = pmc >> PCI_PM_CAP_PME_SHIFT;
		/*
		 * Make device's PM flags reflect the wake-up capability, but
		 * let the user space enable it to wake up the system as needed.
		 */
		FUNC3(&dev->dev, true);
		FUNC4(&dev->dev, false);
		/* Disable the PME# generation functionality */
		FUNC7(dev, false);
	} else {
		dev->pme_support = 0;
	}
}