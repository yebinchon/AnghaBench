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
struct pci_slot {int /*<<< orphan*/ * hotplug; } ;
struct hotplug_slot {int /*<<< orphan*/  (* release ) (struct hotplug_slot*) ;struct pci_slot* pci_slot; int /*<<< orphan*/  slot_list; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_slot*) ; 
 struct hotplug_slot* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hotplug_slot*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_slot*) ; 
 int /*<<< orphan*/  pci_hp_mutex ; 
 int /*<<< orphan*/  FUNC8 (struct hotplug_slot*) ; 

int FUNC9(struct hotplug_slot *hotplug)
{
	struct hotplug_slot *temp;
	struct pci_slot *slot;

	if (!hotplug)
		return -ENODEV;

	FUNC5(&pci_hp_mutex);
	temp = FUNC2(FUNC3(hotplug));
	if (temp != hotplug) {
		FUNC6(&pci_hp_mutex);
		return -ENODEV;
	}

	FUNC4(&hotplug->slot_list);

	slot = hotplug->pci_slot;
	FUNC1(slot);
	FUNC0("Removed slot %s from the list\n", FUNC3(hotplug));

	hotplug->release(hotplug);
	slot->hotplug = NULL;
	FUNC7(slot);
	FUNC6(&pci_hp_mutex);

	return 0;
}