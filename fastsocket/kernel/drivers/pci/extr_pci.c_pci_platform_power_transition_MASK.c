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
struct pci_dev {void* current_state; int /*<<< orphan*/  pm_cap; } ;
typedef  int /*<<< orphan*/  pci_power_t ;

/* Variables and functions */
 int ENODEV ; 
 void* PCI_D0 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *dev, pci_power_t state)
{
	int error;

	if (FUNC1(dev)) {
		error = FUNC2(dev, state);
		if (!error)
			FUNC0(dev, state);
		/* Fall back to PCI_D0 if native PM is not supported */
		if (!dev->pm_cap)
			dev->current_state = PCI_D0;
	} else {
		error = -ENODEV;
		/* Fall back to PCI_D0 if native PM is not supported */
		if (!dev->pm_cap)
			dev->current_state = PCI_D0;
	}

	return error;
}