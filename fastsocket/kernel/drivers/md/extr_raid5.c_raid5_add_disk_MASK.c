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
struct r5conf {int raid_disks; scalar_t__ recovery_disabled; int fullsync; struct disk_info* disks; } ;
struct mddev {scalar_t__ recovery_disabled; struct r5conf* private; } ;
struct md_rdev {int saved_raid_disk; int raid_disk; int /*<<< orphan*/  flags; } ;
struct disk_info {TYPE_1__* replacement; TYPE_1__* rdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  Replacement ; 
 int /*<<< orphan*/  WantReplacement ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC2 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct mddev *mddev, struct md_rdev *rdev)
{
	struct r5conf *conf = mddev->private;
	int err = -EEXIST;
	int disk;
	struct disk_info *p;
	int first = 0;
	int last = conf->raid_disks - 1;

	if (mddev->recovery_disabled == conf->recovery_disabled)
		return -EBUSY;

	if (rdev->saved_raid_disk < 0 && FUNC1(conf))
		/* no point adding a device */
		return -EINVAL;

	if (rdev->raid_disk >= 0)
		first = last = rdev->raid_disk;

	/*
	 * find the disk ... but prefer rdev->saved_raid_disk
	 * if possible.
	 */
	if (rdev->saved_raid_disk >= 0 &&
	    rdev->saved_raid_disk >= first &&
	    conf->disks[rdev->saved_raid_disk].rdev == NULL)
		first = rdev->saved_raid_disk;

	for (disk = first; disk <= last; disk++) {
		p = conf->disks + disk;
		if (p->rdev == NULL) {
			FUNC0(In_sync, &rdev->flags);
			rdev->raid_disk = disk;
			err = 0;
			if (rdev->saved_raid_disk != disk)
				conf->fullsync = 1;
			FUNC3(p->rdev, rdev);
			goto out;
		}
	}
	for (disk = first; disk <= last; disk++) {
		p = conf->disks + disk;
		if (FUNC5(WantReplacement, &p->rdev->flags) &&
		    p->replacement == NULL) {
			FUNC0(In_sync, &rdev->flags);
			FUNC4(Replacement, &rdev->flags);
			rdev->raid_disk = disk;
			err = 0;
			conf->fullsync = 1;
			FUNC3(p->replacement, rdev);
			break;
		}
	}
out:
	FUNC2(conf);
	return err;
}