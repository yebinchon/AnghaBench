#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct pci_slot {int /*<<< orphan*/  kobj; } ;
struct TYPE_14__ {int /*<<< orphan*/  attr; } ;
struct TYPE_13__ {int /*<<< orphan*/  attr; } ;
struct TYPE_12__ {int /*<<< orphan*/  attr; } ;
struct TYPE_11__ {int /*<<< orphan*/  attr; } ;
struct TYPE_10__ {int /*<<< orphan*/  attr; } ;
struct TYPE_9__ {int /*<<< orphan*/  attr; } ;
struct TYPE_8__ {int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pci_slot*) ; 
 scalar_t__ FUNC1 (struct pci_slot*) ; 
 scalar_t__ FUNC2 (struct pci_slot*) ; 
 scalar_t__ FUNC3 (struct pci_slot*) ; 
 scalar_t__ FUNC4 (struct pci_slot*) ; 
 scalar_t__ FUNC5 (struct pci_slot*) ; 
 scalar_t__ FUNC6 (struct pci_slot*) ; 
 TYPE_7__ hotplug_slot_attr_attention ; 
 TYPE_6__ hotplug_slot_attr_cur_bus_speed ; 
 TYPE_5__ hotplug_slot_attr_latch ; 
 TYPE_4__ hotplug_slot_attr_max_bus_speed ; 
 TYPE_3__ hotplug_slot_attr_power ; 
 TYPE_2__ hotplug_slot_attr_presence ; 
 TYPE_1__ hotplug_slot_attr_test ; 
 int /*<<< orphan*/  FUNC7 (struct pci_slot*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_slot*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct pci_slot *slot)
{
	int retval = 0;

	/* Create symbolic link to the hotplug driver module */
	FUNC7(slot);

	if (FUNC5(slot)) {
		retval = FUNC9(&slot->kobj,
					   &hotplug_slot_attr_power.attr);
		if (retval)
			goto exit_power;
	}

	if (FUNC1(slot)) {
		retval = FUNC9(&slot->kobj,
					   &hotplug_slot_attr_attention.attr);
		if (retval)
			goto exit_attention;
	}

	if (FUNC3(slot)) {
		retval = FUNC9(&slot->kobj,
					   &hotplug_slot_attr_latch.attr);
		if (retval)
			goto exit_latch;
	}

	if (FUNC0(slot)) {
		retval = FUNC9(&slot->kobj,
					   &hotplug_slot_attr_presence.attr);
		if (retval)
			goto exit_adapter;
	}

	if (FUNC4(slot)) {
		retval = FUNC9(&slot->kobj,
					&hotplug_slot_attr_max_bus_speed.attr);
		if (retval)
			goto exit_max_speed;
	}

	if (FUNC2(slot)) {
		retval = FUNC9(&slot->kobj,
					&hotplug_slot_attr_cur_bus_speed.attr);
		if (retval)
			goto exit_cur_speed;
	}

	if (FUNC6(slot)) {
		retval = FUNC9(&slot->kobj,
					   &hotplug_slot_attr_test.attr);
		if (retval)
			goto exit_test;
	}

	goto exit;

exit_test:
	if (FUNC2(slot))
		FUNC10(&slot->kobj,
				  &hotplug_slot_attr_cur_bus_speed.attr);
exit_cur_speed:
	if (FUNC4(slot))
		FUNC10(&slot->kobj,
				  &hotplug_slot_attr_max_bus_speed.attr);
exit_max_speed:
	if (FUNC0(slot))
		FUNC10(&slot->kobj,
				  &hotplug_slot_attr_presence.attr);
exit_adapter:
	if (FUNC3(slot))
		FUNC10(&slot->kobj, &hotplug_slot_attr_latch.attr);
exit_latch:
	if (FUNC1(slot))
		FUNC10(&slot->kobj,
				  &hotplug_slot_attr_attention.attr);
exit_attention:
	if (FUNC5(slot))
		FUNC10(&slot->kobj, &hotplug_slot_attr_power.attr);
exit_power:
	FUNC8(slot);
exit:
	return retval;
}