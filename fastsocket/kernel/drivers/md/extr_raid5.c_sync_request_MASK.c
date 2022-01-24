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
struct stripe_head {int /*<<< orphan*/  state; } ;
struct r5conf {int quiesce; scalar_t__ max_degraded; int raid_disks; TYPE_1__* disks; scalar_t__ fullsync; int /*<<< orphan*/  wait_for_overlap; } ;
struct mddev {scalar_t__ dev_sectors; scalar_t__ curr_resync; scalar_t__ degraded; int /*<<< orphan*/  bitmap; int /*<<< orphan*/  recovery; struct r5conf* private; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {int /*<<< orphan*/ * rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_RECOVERY_REQUESTED ; 
 int /*<<< orphan*/  MD_RECOVERY_RESHAPE ; 
 int /*<<< orphan*/  MD_RECOVERY_SYNC ; 
 scalar_t__ STRIPE_SECTORS ; 
 int /*<<< orphan*/  STRIPE_SYNC_REQUESTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct r5conf*) ; 
 struct stripe_head* FUNC5 (struct r5conf*,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct stripe_head*) ; 
 scalar_t__ FUNC8 (struct mddev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline sector_t FUNC14(struct mddev *mddev, sector_t sector_nr, int *skipped, int go_faster)
{
	struct r5conf *conf = mddev->private;
	struct stripe_head *sh;
	sector_t max_sector = mddev->dev_sectors;
	sector_t sync_blocks;
	int still_degraded = 0;
	int i;

	if (sector_nr >= max_sector) {
		/* just being told to finish up .. nothing much to do */
		FUNC12(mddev);

		if (FUNC11(MD_RECOVERY_RESHAPE, &mddev->recovery)) {
			FUNC4(conf);
			return 0;
		}

		if (mddev->curr_resync < max_sector) /* aborted */
			FUNC2(mddev->bitmap, mddev->curr_resync,
					&sync_blocks, 1);
		else /* completed sync */
			conf->fullsync = 0;
		FUNC0(mddev->bitmap);

		return 0;
	}

	/* Allow raid5_quiesce to complete */
	FUNC13(conf->wait_for_overlap, conf->quiesce != 2);

	if (FUNC11(MD_RECOVERY_RESHAPE, &mddev->recovery))
		return FUNC8(mddev, sector_nr, skipped);

	/* No need to check resync_max as we never do more than one
	 * stripe, and as resync_max will always be on a chunk boundary,
	 * if the check in md_do_sync didn't fire, there is no chance
	 * of overstepping resync_max here
	 */

	/* if there is too many failed drives and we are trying
	 * to resync, then assert that we are finished, because there is
	 * nothing we can do.
	 */
	if (mddev->degraded >= conf->max_degraded &&
	    FUNC11(MD_RECOVERY_SYNC, &mddev->recovery)) {
		sector_t rv = mddev->dev_sectors - sector_nr;
		*skipped = 1;
		return rv;
	}
	if (!FUNC11(MD_RECOVERY_REQUESTED, &mddev->recovery) &&
	    !conf->fullsync &&
	    !FUNC3(mddev->bitmap, sector_nr, &sync_blocks, 1) &&
	    sync_blocks >= STRIPE_SECTORS) {
		/* we can skip this block, and probably more */
		sync_blocks /= STRIPE_SECTORS;
		*skipped = 1;
		return sync_blocks * STRIPE_SECTORS; /* keep things rounded to whole stripes */
	}

	FUNC1(mddev->bitmap, sector_nr);

	sh = FUNC5(conf, sector_nr, 0, 1, 0);
	if (sh == NULL) {
		sh = FUNC5(conf, sector_nr, 0, 0, 0);
		/* make sure we don't swamp the stripe cache if someone else
		 * is trying to get access
		 */
		FUNC9(1);
	}
	/* Need to check if array will still be degraded after recovery/resync
	 * We don't need to check the 'failed' flag as when that gets set,
	 * recovery aborts.
	 */
	for (i = 0; i < conf->raid_disks; i++)
		if (conf->disks[i].rdev == NULL)
			still_degraded = 1;

	FUNC3(mddev->bitmap, sector_nr, &sync_blocks, still_degraded);

	FUNC10(STRIPE_SYNC_REQUESTED, &sh->state);

	FUNC6(sh);
	FUNC7(sh);

	return STRIPE_SECTORS;
}