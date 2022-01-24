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
struct pci_dn {struct pci_dev* pcidev; } ;
struct pci_dev {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct pci_dn* FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  eeh_subsystem_enabled ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct device_node* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *dev)
{
	struct device_node *dn;
	struct pci_dn *pdn;

	if (!dev || !eeh_subsystem_enabled)
		return;

	FUNC7("EEH: Adding device %s\n", FUNC6(dev));

	dn = FUNC5(dev);
	pdn = FUNC0(dn);
	if (pdn->pcidev == dev) {
		FUNC7("EEH: Already referenced !\n");
		return;
	}
	FUNC1(pdn->pcidev);

	FUNC4 (dev);
	pdn->pcidev = dev;

	FUNC3(dev);
	FUNC2(dev);
}