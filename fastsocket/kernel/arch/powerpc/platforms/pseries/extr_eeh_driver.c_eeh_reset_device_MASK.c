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
struct pci_dn {int eeh_freeze_count; scalar_t__ eeh_pe_config_addr; struct device_node* node; } ;
struct pci_bus {int dummy; } ;
struct device_node {struct device_node* sibling; struct device_node* child; struct device_node* parent; } ;

/* Variables and functions */
 struct pci_dn* FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dn*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dn*) ; 
 int FUNC6 (struct pci_dn*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8 (struct pci_dn *pe_dn, struct pci_bus *bus)
{
	struct device_node *dn;
	int cnt, rc;

	/* pcibios will clear the counter; save the value */
	cnt = pe_dn->eeh_freeze_count;

	if (bus)
		FUNC4(bus);

	/* Reset the pci controller. (Asserts RST#; resets config space).
	 * Reconfigure bridges and devices. Don't try to bring the system
	 * up if the reset failed for some reason. */
	rc = FUNC6(pe_dn);
	if (rc)
		return rc;

	/* Walk over all functions on this device.  */
	dn = pe_dn->node;
	if (!FUNC3(dn) && FUNC0(dn->parent))
		dn = dn->parent->child;

	while (dn) {
		struct pci_dn *ppe = FUNC0(dn);
		/* On Power4, always true because eeh_pe_config_addr=0 */
		if (pe_dn->eeh_pe_config_addr == ppe->eeh_pe_config_addr) {
			FUNC5(ppe);
			FUNC1(ppe);
 		}
		dn = dn->sibling;
	}

	/* Give the system 5 seconds to finish running the user-space
	 * hotplug shutdown scripts, e.g. ifdown for ethernet.  Yes, 
	 * this is a hack, but if we don't do this, and try to bring 
	 * the device up before the scripts have taken it down, 
	 * potentially weird things happen.
	 */
	if (bus) {
		FUNC7 (5);
		FUNC2(bus);
	}
	pe_dn->eeh_freeze_count = cnt;

	return 0;
}