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
struct pci_slot {int /*<<< orphan*/  kobj; struct hotplug_slot* hotplug; } ;
struct pci_bus {int dummy; } ;
struct module {int dummy; } ;
struct hotplug_slot {int /*<<< orphan*/  slot_list; struct pci_slot* pci_slot; TYPE_1__* ops; int /*<<< orphan*/ * release; int /*<<< orphan*/ * info; } ;
struct TYPE_2__ {char const* mod_name; struct module* owner; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct pci_slot*) ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int FUNC1 (struct pci_slot*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (struct pci_slot*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct pci_slot* FUNC8 (struct pci_bus*,int,char const*,struct hotplug_slot*) ; 
 int /*<<< orphan*/  pci_hotplug_slot_list ; 
 int /*<<< orphan*/  pci_hp_mutex ; 

int FUNC9(struct hotplug_slot *slot, struct pci_bus *bus,
		      int devnr, const char *name,
		      struct module *owner, const char *mod_name)
{
	int result;
	struct pci_slot *pci_slot;

	if (slot == NULL)
		return -ENODEV;
	if ((slot->info == NULL) || (slot->ops == NULL))
		return -EINVAL;
	if (slot->release == NULL) {
		FUNC2("Why are you trying to register a hotplug slot "
		    "without a proper release function?\n");
		return -EINVAL;
	}

	slot->ops->owner = owner;
	slot->ops->mod_name = mod_name;

	FUNC6(&pci_hp_mutex);
	/*
	 * No problems if we call this interface from both ACPI_PCI_SLOT
	 * driver and call it here again. If we've already created the
	 * pci_slot, the interface will simply bump the refcount.
	 */
	pci_slot = FUNC8(bus, devnr, name, slot);
	if (FUNC0(pci_slot)) {
		result = FUNC1(pci_slot);
		goto out;
	}

	slot->pci_slot = pci_slot;
	pci_slot->hotplug = slot;

	FUNC5(&slot->slot_list, &pci_hotplug_slot_list);

	result = FUNC3(pci_slot);
	FUNC4(&pci_slot->kobj, KOBJ_ADD);
	FUNC2("Added slot %s to the list\n", name);
out:
	FUNC7(&pci_hp_mutex);
	return result;
}