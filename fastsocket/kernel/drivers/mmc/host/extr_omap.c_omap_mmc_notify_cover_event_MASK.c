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
struct mmc_omap_slot {int cover_open; int /*<<< orphan*/  cover_tasklet; TYPE_2__* mmc; } ;
struct mmc_omap_host {int nr_slots; struct mmc_omap_slot** slots; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_4__ {TYPE_1__ class_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mmc_omap_host* FUNC1 (struct device*) ; 
 int FUNC2 (struct mmc_omap_slot*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct device *dev, int num, int is_closed)
{
	int cover_open;
	struct mmc_omap_host *host = FUNC1(dev);
	struct mmc_omap_slot *slot = host->slots[num];

	FUNC0(num >= host->nr_slots);

	/* Other subsystems can call in here before we're initialised. */
	if (host->nr_slots == 0 || !host->slots[num])
		return;

	cover_open = FUNC2(slot);
	if (cover_open != slot->cover_open) {
		slot->cover_open = cover_open;
		FUNC3(&slot->mmc->class_dev.kobj, NULL, "cover_switch");
	}

	FUNC4(&slot->cover_tasklet);
}