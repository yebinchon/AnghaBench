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
struct slot {int /*<<< orphan*/  hotplug_slot; TYPE_1__* hpc_ops; } ;
struct hotplug_slot_info {int /*<<< orphan*/  adapter_status; int /*<<< orphan*/  latch_status; int /*<<< orphan*/  attention_status; int /*<<< orphan*/  power_status; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_adapter_status ) (struct slot*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* get_latch_status ) (struct slot*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* get_attention_status ) (struct slot*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* get_power_status ) (struct slot*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct hotplug_slot_info*) ; 
 struct hotplug_slot_info* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct hotplug_slot_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct slot*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct slot*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct slot*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct slot*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7 (struct slot *slot)
{
	struct hotplug_slot_info *info;
	int result;

	info = FUNC1(sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	slot->hpc_ops->get_power_status(slot, &(info->power_status));
	slot->hpc_ops->get_attention_status(slot, &(info->attention_status));
	slot->hpc_ops->get_latch_status(slot, &(info->latch_status));
	slot->hpc_ops->get_adapter_status(slot, &(info->adapter_status));

	result = FUNC2(slot->hotplug_slot, info);
	FUNC0 (info);
	return result;
}