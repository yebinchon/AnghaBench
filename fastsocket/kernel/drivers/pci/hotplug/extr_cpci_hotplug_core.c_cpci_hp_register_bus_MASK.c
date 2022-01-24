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
typedef  int u8 ;
struct slot {int number; int /*<<< orphan*/  slot_list; struct slot* hotplug_slot; int /*<<< orphan*/  attention_status; int /*<<< orphan*/  power_status; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * release; struct slot* private; int /*<<< orphan*/  devfn; struct pci_bus* bus; struct slot* info; } ;
struct pci_bus {int number; } ;
struct hotplug_slot_info {int number; int /*<<< orphan*/  slot_list; struct hotplug_slot_info* hotplug_slot; int /*<<< orphan*/  attention_status; int /*<<< orphan*/  power_status; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * release; struct hotplug_slot_info* private; int /*<<< orphan*/  devfn; struct pci_bus* bus; struct hotplug_slot_info* info; } ;
struct hotplug_slot {int number; int /*<<< orphan*/  slot_list; struct hotplug_slot* hotplug_slot; int /*<<< orphan*/  attention_status; int /*<<< orphan*/  power_status; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * release; struct hotplug_slot* private; int /*<<< orphan*/  devfn; struct pci_bus* bus; struct hotplug_slot* info; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int SLOT_NAME_SIZE ; 
 scalar_t__ controller ; 
 int /*<<< orphan*/  FUNC1 (struct slot*) ; 
 int /*<<< orphan*/  FUNC2 (struct slot*) ; 
 int /*<<< orphan*/  cpci_hotplug_slot_ops ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct slot*) ; 
 struct slot* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_rwsem ; 
 int FUNC9 (struct slot*,struct pci_bus*,int,char*) ; 
 int /*<<< orphan*/  release_slot ; 
 int /*<<< orphan*/  slot_list ; 
 char* FUNC10 (struct slot*) ; 
 int /*<<< orphan*/  slots ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int
FUNC13(struct pci_bus *bus, u8 first, u8 last)
{
	struct slot *slot;
	struct hotplug_slot *hotplug_slot;
	struct hotplug_slot_info *info;
	char name[SLOT_NAME_SIZE];
	int status = -ENOMEM;
	int i;

	if (!(controller && bus))
		return -ENODEV;

	/*
	 * Create a structure for each slot, and register that slot
	 * with the pci_hotplug subsystem.
	 */
	for (i = first; i <= last; ++i) {
		slot = FUNC7(sizeof (struct slot), GFP_KERNEL);
		if (!slot)
			goto error;

		hotplug_slot =
			FUNC7(sizeof (struct hotplug_slot), GFP_KERNEL);
		if (!hotplug_slot)
			goto error_slot;
		slot->hotplug_slot = hotplug_slot;

		info = FUNC7(sizeof (struct hotplug_slot_info), GFP_KERNEL);
		if (!info)
			goto error_hpslot;
		hotplug_slot->info = info;

		slot->bus = bus;
		slot->number = i;
		slot->devfn = FUNC0(i, 0);

		FUNC11(name, SLOT_NAME_SIZE, "%02x:%02x", bus->number, i);

		hotplug_slot->private = slot;
		hotplug_slot->release = &release_slot;
		hotplug_slot->ops = &cpci_hotplug_slot_ops;

		/*
		 * Initialize the slot info structure with some known
		 * good values.
		 */
		FUNC3("initializing slot %s", name);
		info->power_status = FUNC2(slot);
		info->attention_status = FUNC1(slot);

		FUNC3("registering slot %s", name);
		status = FUNC9(slot->hotplug_slot, bus, i, name);
		if (status) {
			FUNC5("pci_hp_register failed with error %d", status);
			goto error_info;
		}
		FUNC3("slot registered with name: %s", FUNC10(slot));

		/* Add slot to our internal list */
		FUNC4(&list_rwsem);
		FUNC8(&slot->slot_list, &slot_list);
		slots++;
		FUNC12(&list_rwsem);
	}
	return 0;
error_info:
	FUNC6(info);
error_hpslot:
	FUNC6(hotplug_slot);
error_slot:
	FUNC6(slot);
error:
	return status;
}