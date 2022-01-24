#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct list_head {int dummy; } ;
struct TYPE_4__ {struct list_head entry; } ;
struct device {TYPE_2__ power; int /*<<< orphan*/  kobj; TYPE_1__* bus; } ;
struct dev_pm_info_entry {struct list_head entry; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  dpm_list ; 
 struct dev_pm_info_entry* FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC5(struct device *deva, struct device *devb)
{
	struct list_head *entrya, *entryb;
#ifdef CONFIG_PPC_PSERIES
	struct dev_pm_info_entry *pm_entrya, *pm_entryb;
#endif /* CONFIG_PPC_PSERIES */

	FUNC4("PM: Moving %s:%s before %s:%s\n",
		 deva->bus ? deva->bus->name : "No Bus",
		 FUNC2(&deva->kobj),
		 devb->bus ? devb->bus->name : "No Bus",
		 FUNC2(&devb->kobj));

#ifdef CONFIG_PPC_PSERIES
	pm_entrya = get_dev_pm_info_entry(deva, &dpm_list);
	if (!pm_entrya) {
		dev_WARN(deva, "Not found on PM device list");
		return;
	}

	pm_entryb = get_dev_pm_info_entry(devb, &dpm_list);
	if (!pm_entryb) {
		dev_WARN(devb, "Not found on PM device list");
		return;
	}

	entrya = &pm_entrya->entry;
	entryb = &pm_entryb->entry;
#else /* !CONFIG_PPC_PSERIES */
	entrya = &deva->power.entry;
	entryb = &devb->power.entry;
#endif /* !CONFIG_PPC_PSERIES */

	/* Delete deva from dpm_list and reinsert before devb. */
	FUNC3(entrya, entryb);
}