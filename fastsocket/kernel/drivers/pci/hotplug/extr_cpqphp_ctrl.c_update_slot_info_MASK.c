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
struct slot {int /*<<< orphan*/  hotplug_slot; } ;
struct hotplug_slot_info {int /*<<< orphan*/  adapter_status; int /*<<< orphan*/  latch_status; int /*<<< orphan*/  attention_status; int /*<<< orphan*/  power_status; } ;
struct controller {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct controller*,struct slot*) ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,struct slot*) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*,struct slot*) ; 
 int /*<<< orphan*/  FUNC3 (struct controller*,struct slot*) ; 
 int /*<<< orphan*/  FUNC4 (struct hotplug_slot_info*) ; 
 struct hotplug_slot_info* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct hotplug_slot_info*) ; 

__attribute__((used)) static int FUNC7(struct controller *ctrl, struct slot *slot)
{
	struct hotplug_slot_info *info;
	int result;

	info = FUNC5(sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->power_status = FUNC3(ctrl, slot);
	info->attention_status = FUNC0(ctrl, slot);
	info->latch_status = FUNC1(ctrl, slot);
	info->adapter_status = FUNC2(ctrl, slot);
	result = FUNC6(slot->hotplug_slot, info);
	FUNC4 (info);
	return result;
}