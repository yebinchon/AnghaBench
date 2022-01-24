#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int raid_disks; int near_copies; } ;
struct r10conf {scalar_t__ fullsync; TYPE_4__* mddev; TYPE_1__ geo; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  reshape_progress; TYPE_1__ prev; } ;
struct TYPE_8__ {int chunk_sectors; TYPE_3__* queue; int /*<<< orphan*/  recovery; } ;
struct TYPE_6__ {int ra_pages; } ;
struct TYPE_7__ {TYPE_2__ backing_dev_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_RECOVERY_INTR ; 
 int /*<<< orphan*/  MaxSector ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct r10conf *conf)
{
	if (FUNC4(MD_RECOVERY_INTR, &conf->mddev->recovery))
		return;

	FUNC2(&conf->device_lock);
	conf->prev = conf->geo;
	FUNC0(conf->mddev);
	FUNC1();
	conf->reshape_progress = MaxSector;
	FUNC3(&conf->device_lock);

	/* read-ahead size must cover two whole stripes, which is
	 * 2 * (datadisks) * chunksize where 'n' is the number of raid devices
	 */
	if (conf->mddev->queue) {
		int stripe = conf->geo.raid_disks *
			((conf->mddev->chunk_sectors << 9) / PAGE_SIZE);
		stripe /= conf->geo.near_copies;
		if (conf->mddev->queue->backing_dev_info.ra_pages < 2 * stripe)
			conf->mddev->queue->backing_dev_info.ra_pages = 2 * stripe;
	}
	conf->fullsync = 0;
}