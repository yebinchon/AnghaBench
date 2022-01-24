#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct slot {struct hotplug_slot_info* hotplug_slot; } ;
struct hotplug_slot_info {int /*<<< orphan*/  adapter_status; int /*<<< orphan*/  latch_status; int /*<<< orphan*/  attention_status; int /*<<< orphan*/  power_status; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * release; struct slot* private; struct hotplug_slot_info* info; } ;
struct hotplug_slot {int /*<<< orphan*/  adapter_status; int /*<<< orphan*/  latch_status; int /*<<< orphan*/  attention_status; int /*<<< orphan*/  power_status; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * release; struct slot* private; struct hotplug_slot* info; } ;
struct controller {TYPE_2__* pcie; struct slot* slot; } ;
struct TYPE_7__ {int /*<<< orphan*/  number; } ;
struct TYPE_6__ {TYPE_1__* port; } ;
struct TYPE_5__ {TYPE_3__* subordinate; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct controller*) ; 
 int SLOT_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hotplug_slot_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hotplug_slot_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hotplug_slot_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct hotplug_slot_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct hotplug_slot_info*) ; 
 struct hotplug_slot_info* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int FUNC10 (struct hotplug_slot_info*,TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  pciehp_hotplug_slot_ops ; 
 int /*<<< orphan*/  release_slot ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC12(struct controller *ctrl)
{
	struct slot *slot = ctrl->slot;
	struct hotplug_slot *hotplug = NULL;
	struct hotplug_slot_info *info = NULL;
	char name[SLOT_NAME_SIZE];
	int retval = -ENOMEM;

	hotplug = FUNC8(sizeof(*hotplug), GFP_KERNEL);
	if (!hotplug)
		goto out;

	info = FUNC8(sizeof(*info), GFP_KERNEL);
	if (!info)
		goto out;

	/* register this slot with the hotplug pci core */
	hotplug->info = info;
	hotplug->private = slot;
	hotplug->release = &release_slot;
	hotplug->ops = &pciehp_hotplug_slot_ops;
	slot->hotplug_slot = hotplug;
	FUNC11(name, SLOT_NAME_SIZE, "%u", FUNC0(ctrl));

	FUNC1(ctrl, "Registering domain:bus:dev=%04x:%02x:00 sun=%x\n",
		 FUNC9(ctrl->pcie->port->subordinate),
		 ctrl->pcie->port->subordinate->number, FUNC0(ctrl));
	retval = FUNC10(hotplug,
				 ctrl->pcie->port->subordinate, 0, name);
	if (retval) {
		FUNC2(ctrl,
			 "pci_hp_register failed with error %d\n", retval);
		goto out;
	}
	FUNC6(hotplug, &info->power_status);
	FUNC4(hotplug, &info->attention_status);
	FUNC5(hotplug, &info->latch_status);
	FUNC3(hotplug, &info->adapter_status);
out:
	if (retval) {
		FUNC7(info);
		FUNC7(hotplug);
	}
	return retval;
}