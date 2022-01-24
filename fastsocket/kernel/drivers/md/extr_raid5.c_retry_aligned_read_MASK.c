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
struct stripe_head {TYPE_1__* dev; } ;
struct r5conf {int /*<<< orphan*/  wait_for_stripe; int /*<<< orphan*/  active_aligned_reads; struct bio* retry_read_aligned; } ;
struct bio {int bi_sector; int bi_size; int /*<<< orphan*/  bi_bdev; } ;
typedef  int sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  R5_ReadNoMerge ; 
 scalar_t__ STRIPE_SECTORS ; 
 int /*<<< orphan*/  FUNC0 (struct stripe_head*,struct bio*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 struct stripe_head* FUNC4 (struct r5conf*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct stripe_head*) ; 
 int FUNC6 (struct bio*) ; 
 int FUNC7 (struct r5conf*,int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct bio*) ; 
 int /*<<< orphan*/  FUNC9 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int  FUNC14(struct r5conf *conf, struct bio *raid_bio)
{
	/* We may not be able to submit a whole bio at once as there
	 * may not be enough stripe_heads available.
	 * We cannot pre-allocate enough stripe_heads as we may need
	 * more than exist in the cache (if we allow ever large chunks).
	 * So we do one stripe head at a time and record in
	 * ->bi_hw_segments how many have been done.
	 *
	 * We *know* that this entire raid_bio is in one chunk, so
	 * it will be only one 'dd_idx' and only need one call to raid5_compute_sector.
	 */
	struct stripe_head *sh;
	int dd_idx;
	sector_t sector, logical_sector, last_sector;
	int scnt = 0;
	int remaining;
	int handled = 0;

	logical_sector = raid_bio->bi_sector & ~((sector_t)STRIPE_SECTORS-1);
	sector = FUNC7(conf, logical_sector,
				      0, &dd_idx, NULL);
	last_sector = raid_bio->bi_sector + (raid_bio->bi_size>>9);

	for (; logical_sector < last_sector;
	     logical_sector += STRIPE_SECTORS,
		     sector += STRIPE_SECTORS,
		     scnt++) {

		if (scnt < FUNC6(raid_bio))
			/* already done this stripe */
			continue;

		sh = FUNC4(conf, sector, 0, 1, 0);

		if (!sh) {
			/* failed to get a stripe - must wait */
			FUNC9(raid_bio, scnt);
			conf->retry_read_aligned = raid_bio;
			return handled;
		}

		if (!FUNC0(sh, raid_bio, dd_idx, 0)) {
			FUNC10(sh);
			FUNC9(raid_bio, scnt);
			conf->retry_read_aligned = raid_bio;
			return handled;
		}

		FUNC11(R5_ReadNoMerge, &sh->dev[dd_idx].flags);
		FUNC5(sh);
		FUNC10(sh);
		handled++;
	}
	remaining = FUNC8(raid_bio);
	if (remaining == 0) {
		FUNC12(FUNC2(raid_bio->bi_bdev),
					 raid_bio);
		FUNC3(raid_bio, 0);
	}
	if (FUNC1(&conf->active_aligned_reads))
		FUNC13(&conf->wait_for_stripe);
	return handled;
}