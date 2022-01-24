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
struct r5conf {int previous_raid_disks; int raid_disks; TYPE_1__* disks; } ;
struct md_rdev {int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  replacement; int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 struct md_rdev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct r5conf *conf)
{
	int degraded, degraded2;
	int i;

	FUNC1();
	degraded = 0;
	for (i = 0; i < conf->previous_raid_disks; i++) {
		struct md_rdev *rdev = FUNC0(conf->disks[i].rdev);
		if (rdev && FUNC3(Faulty, &rdev->flags))
			rdev = FUNC0(conf->disks[i].replacement);
		if (!rdev || FUNC3(Faulty, &rdev->flags))
			degraded++;
		else if (FUNC3(In_sync, &rdev->flags))
			;
		else
			/* not in-sync or faulty.
			 * If the reshape increases the number of devices,
			 * this is being recovered by the reshape, so
			 * this 'previous' section is not in_sync.
			 * If the number of devices is being reduced however,
			 * the device can only be part of the array if
			 * we are reverting a reshape, so this section will
			 * be in-sync.
			 */
			if (conf->raid_disks >= conf->previous_raid_disks)
				degraded++;
	}
	FUNC2();
	if (conf->raid_disks == conf->previous_raid_disks)
		return degraded;
	FUNC1();
	degraded2 = 0;
	for (i = 0; i < conf->raid_disks; i++) {
		struct md_rdev *rdev = FUNC0(conf->disks[i].rdev);
		if (rdev && FUNC3(Faulty, &rdev->flags))
			rdev = FUNC0(conf->disks[i].replacement);
		if (!rdev || FUNC3(Faulty, &rdev->flags))
			degraded2++;
		else if (FUNC3(In_sync, &rdev->flags))
			;
		else
			/* not in-sync or faulty.
			 * If reshape increases the number of devices, this
			 * section has already been recovered, else it
			 * almost certainly hasn't.
			 */
			if (conf->raid_disks <= conf->previous_raid_disks)
				degraded2++;
	}
	FUNC2();
	if (degraded2 > degraded)
		return degraded2;
	return degraded;
}