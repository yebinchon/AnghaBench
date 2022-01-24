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
typedef  int u16 ;
struct slot {int device_num; int /*<<< orphan*/  hp_list; struct hotplug_slot* hotplug_slot; int /*<<< orphan*/  physical_path; struct pci_bus* pci_bus; } ;
struct TYPE_2__ {scalar_t__ bs_persist_busnum; } ;
struct pcibus_info {TYPE_1__ pbi_buscommon; } ;
struct pci_bus {int dummy; } ;
struct hotplug_slot {struct slot* private; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct pcibus_info* FUNC0 (struct pci_bus*) ; 
 struct slot* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sn_hp_list ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,int,int) ; 

__attribute__((used)) static int FUNC6(struct hotplug_slot *bss_hotplug_slot,
				    struct pci_bus *pci_bus, int device,
				    char *name)
{
	struct pcibus_info *pcibus_info;
	struct slot *slot;

	pcibus_info = FUNC0(pci_bus);

	slot = FUNC1(sizeof(*slot), GFP_KERNEL);
	if (!slot)
		return -ENOMEM;
	bss_hotplug_slot->private = slot;

	slot->device_num = device;
	slot->pci_bus = pci_bus;
	FUNC5(name, "%04x:%02x:%02x",
		FUNC3(pci_bus),
		((u16)pcibus_info->pbi_buscommon.bs_persist_busnum),
		device + 1);

	FUNC4(pci_bus, slot->physical_path);

	slot->hotplug_slot = bss_hotplug_slot;
	FUNC2(&slot->hp_list, &sn_hp_list);

	return 0;
}