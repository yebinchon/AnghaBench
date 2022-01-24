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
struct TYPE_3__ {int /*<<< orphan*/  entry; } ;
struct device {TYPE_1__ power; int /*<<< orphan*/  kobj; TYPE_2__* bus; } ;
struct dev_pm_info_entry {int /*<<< orphan*/  entry; } ;
struct TYPE_4__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  dpm_list ; 
 int /*<<< orphan*/  dpm_list_mtx ; 
 struct dev_pm_info_entry* FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dev_pm_info_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 

void FUNC9(struct device *dev)
{
#ifdef CONFIG_PPC_PSERIES
	struct dev_pm_info_entry* pm_entry;
#endif /* CONFIG_PPC_PSERIES */

	FUNC8("PM: Removing info for %s:%s\n",
		 dev->bus ? dev->bus->name : "No Bus",
		 FUNC3(&dev->kobj));
	FUNC5(&dpm_list_mtx);

#ifdef CONFIG_PPC_PSERIES
	pm_entry = get_dev_pm_info_entry(dev, &dpm_list);
	if (!pm_entry) {
		dev_WARN(dev, "Not found on PM device list");
		goto out;
	}
	list_del_init(&pm_entry->entry);
	kfree(pm_entry);
out:
#else  /* !CONFIG_PPC_PSERIES */
	FUNC4(&dev->power.entry);
#endif /* !CONFIG_PPC_PSERIES */

	FUNC6(&dpm_list_mtx);
	FUNC7(dev);
}