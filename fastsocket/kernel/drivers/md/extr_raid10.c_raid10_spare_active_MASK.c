#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct raid10_info {TYPE_3__* rdev; TYPE_2__* replacement; } ;
struct TYPE_4__ {int raid_disks; } ;
struct r10conf {int /*<<< orphan*/  device_lock; struct raid10_info* mirrors; TYPE_1__ geo; } ;
struct mddev {int degraded; struct r10conf* private; } ;
struct TYPE_6__ {scalar_t__ recovery_offset; int /*<<< orphan*/  sysfs_state; int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {scalar_t__ recovery_offset; int /*<<< orphan*/  sysfs_state; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 scalar_t__ MaxSector ; 
 int /*<<< orphan*/  FUNC0 (struct r10conf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct mddev *mddev)
{
	int i;
	struct r10conf *conf = mddev->private;
	struct raid10_info *tmp;
	int count = 0;
	unsigned long flags;

	/*
	 * Find all non-in_sync disks within the RAID10 configuration
	 * and mark them in_sync
	 */
	for (i = 0; i < conf->geo.raid_disks; i++) {
		tmp = conf->mirrors + i;
		if (tmp->replacement
		    && tmp->replacement->recovery_offset == MaxSector
		    && !FUNC7(Faulty, &tmp->replacement->flags)
		    && !FUNC6(In_sync, &tmp->replacement->flags)) {
			/* Replacement has just become active */
			if (!tmp->rdev
			    || !FUNC5(In_sync, &tmp->rdev->flags))
				count++;
			if (tmp->rdev) {
				/* Replaced device not technically faulty,
				 * but we need to be sure it gets removed
				 * and never re-added.
				 */
				FUNC1(Faulty, &tmp->rdev->flags);
				FUNC4(
					tmp->rdev->sysfs_state);
			}
			FUNC4(tmp->replacement->sysfs_state);
		} else if (tmp->rdev
			   && tmp->rdev->recovery_offset == MaxSector
			   && !FUNC7(Faulty, &tmp->rdev->flags)
			   && !FUNC6(In_sync, &tmp->rdev->flags)) {
			count++;
			FUNC4(tmp->rdev->sysfs_state);
		}
	}
	FUNC2(&conf->device_lock, flags);
	mddev->degraded -= count;
	FUNC3(&conf->device_lock, flags);

	FUNC0(conf);
	return count;
}