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
struct geom {int near_copies; int far_copies; } ;
struct r10conf {scalar_t__ const next_resync; int copies; TYPE_3__* mddev; TYPE_2__* mirrors; struct geom geo; } ;
struct r10bio {scalar_t__ sector; int sectors; int read_slot; TYPE_1__* devs; } ;
struct md_rdev {scalar_t__ recovery_offset; int /*<<< orphan*/  flags; int /*<<< orphan*/  nr_pending; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_6__ {scalar_t__ recovery_cp; } ;
struct TYPE_5__ {scalar_t__ head_position; int /*<<< orphan*/  rdev; int /*<<< orphan*/  replacement; } ;
struct TYPE_4__ {scalar_t__ bio; int devnum; scalar_t__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  Faulty ; 
 scalar_t__ IO_BLOCKED ; 
 int /*<<< orphan*/  In_sync ; 
 scalar_t__ MaxSector ; 
 int /*<<< orphan*/  Unmerged ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct md_rdev*,scalar_t__,int,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct r10conf*,struct r10bio*) ; 
 struct md_rdev* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct md_rdev*,TYPE_3__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct md_rdev *FUNC10(struct r10conf *conf,
				    struct r10bio *r10_bio,
				    int *max_sectors)
{
	const sector_t this_sector = r10_bio->sector;
	int disk, slot;
	int sectors = r10_bio->sectors;
	int best_good_sectors;
	sector_t new_distance, best_dist;
	struct md_rdev *best_rdev, *rdev = NULL;
	int do_balance;
	int best_slot;
	struct geom *geo = &conf->geo;

	FUNC4(conf, r10_bio);
	FUNC6();
retry:
	sectors = r10_bio->sectors;
	best_slot = -1;
	best_rdev = NULL;
	best_dist = MaxSector;
	best_good_sectors = 0;
	do_balance = 1;
	/*
	 * Check if we can balance. We can balance on the whole
	 * device if no resync is going on (recovery is ok), or below
	 * the resync window. We take the first readable disk when
	 * above the resync window.
	 */
	if (conf->mddev->recovery_cp < MaxSector
	    && (this_sector + sectors >= conf->next_resync))
		do_balance = 0;

	for (slot = 0; slot < conf->copies ; slot++) {
		sector_t first_bad;
		int bad_sectors;
		sector_t dev_sector;

		if (r10_bio->devs[slot].bio == IO_BLOCKED)
			continue;
		disk = r10_bio->devs[slot].devnum;
		rdev = FUNC5(conf->mirrors[disk].replacement);
		if (rdev == NULL || FUNC9(Faulty, &rdev->flags) ||
		    FUNC9(Unmerged, &rdev->flags) ||
		    r10_bio->devs[slot].addr + sectors > rdev->recovery_offset)
			rdev = FUNC5(conf->mirrors[disk].rdev);
		if (rdev == NULL ||
		    FUNC9(Faulty, &rdev->flags) ||
		    FUNC9(Unmerged, &rdev->flags))
			continue;
		if (!FUNC9(In_sync, &rdev->flags) &&
		    r10_bio->devs[slot].addr + sectors > rdev->recovery_offset)
			continue;

		dev_sector = r10_bio->devs[slot].addr;
		if (FUNC3(rdev, dev_sector, sectors,
				&first_bad, &bad_sectors)) {
			if (best_dist < MaxSector)
				/* Already have a better slot */
				continue;
			if (first_bad <= dev_sector) {
				/* Cannot read here.  If this is the
				 * 'primary' device, then we must not read
				 * beyond 'bad_sectors' from another device.
				 */
				bad_sectors -= (dev_sector - first_bad);
				if (!do_balance && sectors > bad_sectors)
					sectors = bad_sectors;
				if (best_good_sectors > sectors)
					best_good_sectors = sectors;
			} else {
				sector_t good_sectors =
					first_bad - dev_sector;
				if (good_sectors > best_good_sectors) {
					best_good_sectors = good_sectors;
					best_slot = slot;
					best_rdev = rdev;
				}
				if (!do_balance)
					/* Must read from here */
					break;
			}
			continue;
		} else
			best_good_sectors = sectors;

		if (!do_balance)
			break;

		/* This optimisation is debatable, and completely destroys
		 * sequential read speed for 'far copies' arrays.  So only
		 * keep it for 'near' arrays, and review those later.
		 */
		if (geo->near_copies > 1 && !FUNC2(&rdev->nr_pending))
			break;

		/* for far > 1 always use the lowest address */
		if (geo->far_copies > 1)
			new_distance = r10_bio->devs[slot].addr;
		else
			new_distance = FUNC0(r10_bio->devs[slot].addr -
					   conf->mirrors[disk].head_position);
		if (new_distance < best_dist) {
			best_dist = new_distance;
			best_slot = slot;
			best_rdev = rdev;
		}
	}
	if (slot >= conf->copies) {
		slot = best_slot;
		rdev = best_rdev;
	}

	if (slot >= 0) {
		FUNC1(&rdev->nr_pending);
		if (FUNC9(Faulty, &rdev->flags)) {
			/* Cannot risk returning a device that failed
			 * before we inc'ed nr_pending
			 */
			FUNC8(rdev, conf->mddev);
			goto retry;
		}
		r10_bio->read_slot = slot;
	} else
		rdev = NULL;
	FUNC7();
	*max_sectors = best_good_sectors;

	return rdev;
}