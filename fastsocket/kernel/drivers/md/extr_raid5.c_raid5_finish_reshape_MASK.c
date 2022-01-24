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
struct r5conf {int raid_disks; int /*<<< orphan*/  chunk_sectors; int /*<<< orphan*/  algorithm; TYPE_1__* disks; int /*<<< orphan*/  device_lock; } ;
struct mddev {scalar_t__ delta_disks; scalar_t__ reshape_backwards; int /*<<< orphan*/  reshape_position; int /*<<< orphan*/  chunk_sectors; int /*<<< orphan*/  layout; int /*<<< orphan*/  degraded; int /*<<< orphan*/  gendisk; int /*<<< orphan*/  array_sectors; int /*<<< orphan*/  recovery; struct r5conf* private; } ;
struct md_rdev {int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {struct md_rdev* replacement; struct md_rdev* rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  MD_RECOVERY_INTR ; 
 int /*<<< orphan*/  MaxSector ; 
 int /*<<< orphan*/  FUNC0 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mddev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct mddev *mddev)
{
	struct r5conf *conf = mddev->private;

	if (!FUNC8(MD_RECOVERY_INTR, &mddev->recovery)) {

		if (mddev->delta_disks > 0) {
			FUNC2(mddev, FUNC3(mddev, 0, 0));
			FUNC5(mddev->gendisk, mddev->array_sectors);
			FUNC4(mddev->gendisk);
		} else {
			int d;
			FUNC6(&conf->device_lock);
			mddev->degraded = FUNC0(conf);
			FUNC7(&conf->device_lock);
			for (d = conf->raid_disks ;
			     d < conf->raid_disks - mddev->delta_disks;
			     d++) {
				struct md_rdev *rdev = conf->disks[d].rdev;
				if (rdev)
					FUNC1(In_sync, &rdev->flags);
				rdev = conf->disks[d].replacement;
				if (rdev)
					FUNC1(In_sync, &rdev->flags);
			}
		}
		mddev->layout = conf->algorithm;
		mddev->chunk_sectors = conf->chunk_sectors;
		mddev->reshape_position = MaxSector;
		mddev->delta_disks = 0;
		mddev->reshape_backwards = 0;
	}
}