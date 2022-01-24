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
struct pci_dev {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * pcidev; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  eeh_subsystem_enabled ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct device_node* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *dev)
{
	struct device_node *dn;
	if (!dev || !eeh_subsystem_enabled)
		return;

	/* Unregister the device with the EEH/PCI address search system */
	FUNC6("EEH: Removing device %s\n", FUNC5(dev));

	dn = FUNC4(dev);
	if (FUNC0(dn)->pcidev == NULL) {
		FUNC6("EEH: Not referenced !\n");
		return;
	}
	FUNC0(dn)->pcidev = NULL;
	FUNC3 (dev);

	FUNC2(dev);
	FUNC1(dev);
}