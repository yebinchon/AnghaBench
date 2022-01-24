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
struct slot {int index; int power_domain; struct slot* hotplug_slot; struct slot* info; int /*<<< orphan*/ * release; int /*<<< orphan*/ * ops; struct slot* private; struct device_node* dn; int /*<<< orphan*/  name; } ;
struct hotplug_slot_info {int dummy; } ;
struct hotplug_slot {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct slot*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpaphp_hotplug_slot_ops ; 
 int /*<<< orphan*/  rpaphp_release_slot ; 

struct slot *FUNC3(struct device_node *dn,
                       int drc_index, char *drc_name, int power_domain)
{
	struct slot *slot;
	
	slot = FUNC2(sizeof(struct slot), GFP_KERNEL);
	if (!slot)
		goto error_nomem;
	slot->hotplug_slot = FUNC2(sizeof(struct hotplug_slot), GFP_KERNEL);
	if (!slot->hotplug_slot)
		goto error_slot;	
	slot->hotplug_slot->info = FUNC2(sizeof(struct hotplug_slot_info),
					   GFP_KERNEL);
	if (!slot->hotplug_slot->info)
		goto error_hpslot;
	slot->name = FUNC1(drc_name, GFP_KERNEL);
	if (!slot->name)
		goto error_info;	
	slot->dn = dn;
	slot->index = drc_index;
	slot->power_domain = power_domain;
	slot->hotplug_slot->private = slot;
	slot->hotplug_slot->ops = &rpaphp_hotplug_slot_ops;
	slot->hotplug_slot->release = &rpaphp_release_slot;
	
	return (slot);

error_info:
	FUNC0(slot->hotplug_slot->info);
error_hpslot:
	FUNC0(slot->hotplug_slot);
error_slot:
	FUNC0(slot);
error_nomem:
	return NULL;
}