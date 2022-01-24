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
typedef  int u8 ;
typedef  int u32 ;
struct slot {int device_num; int /*<<< orphan*/  pci_bus; } ;
struct pcibus_info {int pbi_enabled_devices; } ;
struct hotplug_slot {struct slot* private; } ;

/* Variables and functions */
 struct pcibus_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sn_hotplug_mutex ; 

__attribute__((used)) static inline int FUNC3(struct hotplug_slot *bss_hotplug_slot,
				   u8 *value)
{
	struct slot *slot = bss_hotplug_slot->private;
	struct pcibus_info *pcibus_info;
	u32 power;

	pcibus_info = FUNC0(slot->pci_bus);
	FUNC1(&sn_hotplug_mutex);
	power = pcibus_info->pbi_enabled_devices & (1 << slot->device_num);
	*value = power ? 1 : 0;
	FUNC2(&sn_hotplug_mutex);
	return 0;
}