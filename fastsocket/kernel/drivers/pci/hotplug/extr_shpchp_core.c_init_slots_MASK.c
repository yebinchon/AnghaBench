#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct slot {int hp_slot; int number; int /*<<< orphan*/  slot_list; int /*<<< orphan*/  adapter_status; int /*<<< orphan*/  latch_status; int /*<<< orphan*/  attention_status; int /*<<< orphan*/  power_status; scalar_t__ device; struct slot* hotplug_slot; int /*<<< orphan*/  bus; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * release; struct slot* private; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; int /*<<< orphan*/  hpc_ops; struct controller* ctrl; struct slot* info; } ;
struct hotplug_slot_info {int hp_slot; int number; int /*<<< orphan*/  slot_list; int /*<<< orphan*/  adapter_status; int /*<<< orphan*/  latch_status; int /*<<< orphan*/  attention_status; int /*<<< orphan*/  power_status; scalar_t__ device; struct hotplug_slot_info* hotplug_slot; int /*<<< orphan*/  bus; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * release; struct hotplug_slot_info* private; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; int /*<<< orphan*/  hpc_ops; struct controller* ctrl; struct hotplug_slot_info* info; } ;
struct hotplug_slot {int hp_slot; int number; int /*<<< orphan*/  slot_list; int /*<<< orphan*/  adapter_status; int /*<<< orphan*/  latch_status; int /*<<< orphan*/  attention_status; int /*<<< orphan*/  power_status; scalar_t__ device; struct hotplug_slot* hotplug_slot; int /*<<< orphan*/  bus; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * release; struct hotplug_slot* private; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; int /*<<< orphan*/  hpc_ops; struct controller* ctrl; struct hotplug_slot* info; } ;
struct controller {int num_slots; int first_slot; int slot_num_inc; int /*<<< orphan*/  slot_list; TYPE_1__* pci_dev; int /*<<< orphan*/  slot_device_offset; int /*<<< orphan*/  hpc_ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  number; } ;
struct TYPE_4__ {TYPE_2__* subordinate; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SLOT_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct slot*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct slot*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct slot*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct slot*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct slot*) ; 
 struct slot* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int FUNC12 (struct slot*,TYPE_2__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  release_slot ; 
 int /*<<< orphan*/  shpchp_hotplug_slot_ops ; 
 int /*<<< orphan*/  shpchp_queue_pushbutton_work ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC14(struct controller *ctrl)
{
	struct slot *slot;
	struct hotplug_slot *hotplug_slot;
	struct hotplug_slot_info *info;
	char name[SLOT_NAME_SIZE];
	int retval = -ENOMEM;
	int i;

	for (i = 0; i < ctrl->num_slots; i++) {
		slot = FUNC8(sizeof(*slot), GFP_KERNEL);
		if (!slot)
			goto error;

		hotplug_slot = FUNC8(sizeof(*hotplug_slot), GFP_KERNEL);
		if (!hotplug_slot)
			goto error_slot;
		slot->hotplug_slot = hotplug_slot;

		info = FUNC8(sizeof(*info), GFP_KERNEL);
		if (!info)
			goto error_hpslot;
		hotplug_slot->info = info;

		slot->hp_slot = i;
		slot->ctrl = ctrl;
		slot->bus = ctrl->pci_dev->subordinate->number;
		slot->device = ctrl->slot_device_offset + i;
		slot->hpc_ops = ctrl->hpc_ops;
		slot->number = ctrl->first_slot + (ctrl->slot_num_inc * i);
		FUNC10(&slot->lock);
		FUNC0(&slot->work, shpchp_queue_pushbutton_work);

		/* register this slot with the hotplug pci core */
		hotplug_slot->private = slot;
		hotplug_slot->release = &release_slot;
		FUNC13(name, SLOT_NAME_SIZE, "%d", slot->number);
		hotplug_slot->ops = &shpchp_hotplug_slot_ops;

 		FUNC1(ctrl, "Registering domain:bus:dev=%04x:%02x:%02x "
 			 "hp_slot=%x sun=%x slot_device_offset=%x\n",
 			 FUNC11(ctrl->pci_dev->subordinate),
 			 slot->bus, slot->device, slot->hp_slot, slot->number,
 			 ctrl->slot_device_offset);
		retval = FUNC12(slot->hotplug_slot,
				ctrl->pci_dev->subordinate, slot->device, name);
		if (retval) {
			FUNC2(ctrl, "pci_hp_register failed with error %d\n",
				 retval);
			goto error_info;
		}

		FUNC6(hotplug_slot, &info->power_status);
		FUNC4(hotplug_slot, &info->attention_status);
		FUNC5(hotplug_slot, &info->latch_status);
		FUNC3(hotplug_slot, &info->adapter_status);

		FUNC9(&slot->slot_list, &ctrl->slot_list);
	}

	return 0;
error_info:
	FUNC7(info);
error_hpslot:
	FUNC7(hotplug_slot);
error_slot:
	FUNC7(slot);
error:
	return retval;
}