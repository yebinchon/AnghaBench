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
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct pci_slot *slot)
{
	if (FUNC5(slot))
		FUNC8(&slot->kobj, &hotplug_slot_attr_power.attr);

	if (FUNC1(slot))
		FUNC8(&slot->kobj,
				  &hotplug_slot_attr_attention.attr);

	if (FUNC3(slot))
		FUNC8(&slot->kobj, &hotplug_slot_attr_latch.attr);

	if (FUNC0(slot))
		FUNC8(&slot->kobj,
				  &hotplug_slot_attr_presence.attr);

	if (FUNC4(slot))
		FUNC8(&slot->kobj,
				  &hotplug_slot_attr_max_bus_speed.attr);

	if (FUNC2(slot))
		FUNC8(&slot->kobj,
				  &hotplug_slot_attr_cur_bus_speed.attr);

	if (FUNC6(slot))
		FUNC8(&slot->kobj, &hotplug_slot_attr_test.attr);

	FUNC7(slot);
}