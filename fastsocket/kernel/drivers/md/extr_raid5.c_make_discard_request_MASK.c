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
struct stripe_head {size_t pd_idx; int qd_idx; int /*<<< orphan*/  state; scalar_t__ bm_seq; int /*<<< orphan*/  sector; int /*<<< orphan*/  stripe_lock; TYPE_1__* dev; } ;
struct r5conf {int chunk_sectors; int raid_disks; int max_degraded; int /*<<< orphan*/  preread_active_stripes; scalar_t__ seq_flush; TYPE_2__* mddev; int /*<<< orphan*/  wait_for_overlap; } ;
struct mddev {scalar_t__ reshape_position; int /*<<< orphan*/  bitmap; struct r5conf* private; } ;
struct bio {int bi_sector; int bi_size; int bi_phys_segments; int /*<<< orphan*/ * bi_next; } ;
typedef  int sector_t ;
struct TYPE_4__ {scalar_t__ bitmap; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; struct bio* towrite; scalar_t__ toread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ MaxSector ; 
 int /*<<< orphan*/  R5_OVERWRITE ; 
 int /*<<< orphan*/  R5_Overlap ; 
 int /*<<< orphan*/  STRIPE_BIT_DELAY ; 
 int /*<<< orphan*/  STRIPE_DELAYED ; 
 int /*<<< orphan*/  STRIPE_DISCARD ; 
 int /*<<< orphan*/  STRIPE_HANDLE ; 
 int /*<<< orphan*/  STRIPE_PREREAD_ACTIVE ; 
 scalar_t__ STRIPE_SECTORS ; 
 int /*<<< orphan*/  STRIPE_SYNCING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct stripe_head* FUNC7 (struct r5conf*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct bio*) ; 
 int /*<<< orphan*/  FUNC11 (struct bio*) ; 
 int /*<<< orphan*/  FUNC12 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  w ; 

__attribute__((used)) static int FUNC20(struct mddev *mddev, struct bio *bi)
{
	struct r5conf *conf = mddev->private;
	sector_t logical_sector, last_sector;
	struct stripe_head *sh;
	int remaining;
	int stripe_sectors;

	if (mddev->reshape_position != MaxSector)
		/* Skip discard while reshape is happening */
		return 0;

	logical_sector = bi->bi_sector & ~((sector_t)STRIPE_SECTORS-1);
	last_sector = bi->bi_sector + (bi->bi_size>>9);

	bi->bi_next = NULL;
	bi->bi_phys_segments = 1; /* over-loaded to count active stripes */

	stripe_sectors = conf->chunk_sectors *
		(conf->raid_disks - conf->max_degraded);
	logical_sector = FUNC1(logical_sector,
					       stripe_sectors);
	FUNC14(last_sector, stripe_sectors);

	logical_sector *= conf->chunk_sectors;
	last_sector *= conf->chunk_sectors;

	for (; logical_sector < last_sector;
	     logical_sector += STRIPE_SECTORS) {
		FUNC0(w);
		int d;
	again:
		sh = FUNC7(conf, logical_sector, 0, 0, 0);
		FUNC9(&conf->wait_for_overlap, &w,
				TASK_UNINTERRUPTIBLE);
		FUNC15(R5_Overlap, &sh->dev[sh->pd_idx].flags);
		if (FUNC19(STRIPE_SYNCING, &sh->state)) {
			FUNC12(sh);
			FUNC13();
			goto again;
		}
		FUNC5(R5_Overlap, &sh->dev[sh->pd_idx].flags);
		FUNC16(&sh->stripe_lock);
		for (d = 0; d < conf->raid_disks; d++) {
			if (d == sh->pd_idx || d == sh->qd_idx)
				continue;
			if (sh->dev[d].towrite || sh->dev[d].toread) {
				FUNC15(R5_Overlap, &sh->dev[d].flags);
				FUNC17(&sh->stripe_lock);
				FUNC12(sh);
				FUNC13();
				goto again;
			}
		}
		FUNC15(STRIPE_DISCARD, &sh->state);
		FUNC6(&conf->wait_for_overlap, &w);
		for (d = 0; d < conf->raid_disks; d++) {
			if (d == sh->pd_idx || d == sh->qd_idx)
				continue;
			sh->dev[d].towrite = bi;
			FUNC15(R5_OVERWRITE, &sh->dev[d].flags);
			FUNC11(bi);
		}
		FUNC17(&sh->stripe_lock);
		if (conf->mddev->bitmap) {
			for (d = 0;
			     d < conf->raid_disks - conf->max_degraded;
			     d++)
				FUNC4(mddev->bitmap,
						  sh->sector,
						  STRIPE_SECTORS,
						  0);
			sh->bm_seq = conf->seq_flush + 1;
			FUNC15(STRIPE_BIT_DELAY, &sh->state);
		}

		FUNC15(STRIPE_HANDLE, &sh->state);
		FUNC5(STRIPE_DELAYED, &sh->state);
		if (!FUNC18(STRIPE_PREREAD_ACTIVE, &sh->state))
			FUNC2(&conf->preread_active_stripes);
		FUNC12(sh);
	}

	remaining = FUNC10(bi);
	if (remaining == 0) {
		FUNC8(mddev);
		FUNC3(bi, 0);
	}

	return 0;
}