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

__attribute__((used)) static int FUNC7(struct slot *slot)
{
	struct hotplug_slot_info *info;
	int result;

	info = FUNC1(sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	FUNC6(slot, &info->power_status);
	FUNC4(slot, &info->attention_status);
	FUNC5(slot, &info->latch_status);
	FUNC3(slot, &info->adapter_status);

	result = FUNC2(slot->hotplug_slot, info);
	FUNC0 (info);
	return result;
}