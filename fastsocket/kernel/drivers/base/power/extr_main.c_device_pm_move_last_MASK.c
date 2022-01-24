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
struct TYPE_3__ {struct list_head entry; } ;
struct device {TYPE_1__ power; int /*<<< orphan*/  kobj; TYPE_2__* bus; } ;
struct dev_pm_info_entry {struct list_head entry; } ;
struct TYPE_4__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  dpm_list ; 
 struct dev_pm_info_entry* FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 

void FUNC5(struct device *dev)
{
	struct list_head *entry;
#ifdef CONFIG_PPC_PSERIES
	struct dev_pm_info_entry *pm_entry;
#endif /* CONFIG_PPC_PSERIES */

	FUNC4("PM: Moving %s:%s to end of list\n",
		 dev->bus ? dev->bus->name : "No Bus",
		 FUNC2(&dev->kobj));

#ifdef CONFIG_PPC_PSERIES
	pm_entry = get_dev_pm_info_entry(dev, &dpm_list);
	if (!pm_entry) {
		dev_WARN(dev, "Not found on PM device list");
		return;
	}
	entry = &pm_entry->entry;
#else /* !CONFIG_PPC_PSERIES */
	entry = &dev->power.entry;
#endif /* !CONFIG_PPC_PSERIES */

	FUNC3(entry, &dpm_list);
}