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
struct stripe_head {int /*<<< orphan*/  lock; int /*<<< orphan*/  stripe_lock; TYPE_2__* dev; int /*<<< orphan*/  state; scalar_t__ bm_seq; scalar_t__ sector; struct r5conf* raid_conf; } ;
struct r5conf {scalar_t__ seq_flush; TYPE_1__* mddev; } ;
struct bio {scalar_t__ bi_sector; int bi_size; struct bio* bi_next; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_4__ {scalar_t__ sector; int /*<<< orphan*/  flags; struct bio* towrite; struct bio* toread; } ;
struct TYPE_3__ {scalar_t__ bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  R5_OVERWRITE ; 
 int /*<<< orphan*/  R5_Overlap ; 
 int /*<<< orphan*/  STRIPE_BIT_DELAY ; 
 scalar_t__ STRIPE_SECTORS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long long,unsigned long long,...) ; 
 struct bio* FUNC3 (struct bio*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct stripe_head *sh, struct bio *bi, int dd_idx, int forwrite)
{
	struct bio **bip;
	struct r5conf *conf = sh->raid_conf;
	int firstwrite=0;

	FUNC2("adding bi b#%llu to stripe s#%llu\n",
		(unsigned long long)bi->bi_sector,
		(unsigned long long)sh->sector);

	/*
	 * If several bio share a stripe. The bio bi_phys_segments acts as a
	 * reference count to avoid race. The reference count should already be
	 * increased before this function is called (for example, in
	 * make_request()), so other bio sharing this stripe will not free the
	 * stripe. If a stripe is owned by one stripe, the stripe lock will
	 * protect it.
	 */
	FUNC6(&sh->lock);
	FUNC7(&sh->stripe_lock);
	if (forwrite) {
		bip = &sh->dev[dd_idx].towrite;
		if (*bip == NULL)
			firstwrite = 1;
	} else
		bip = &sh->dev[dd_idx].toread;
	while (*bip && (*bip)->bi_sector < bi->bi_sector) {
		if ((*bip)->bi_sector + ((*bip)->bi_size >> 9) > bi->bi_sector)
			goto overlap;
		bip = & (*bip)->bi_next;
	}
	if (*bip && (*bip)->bi_sector < bi->bi_sector + ((bi->bi_size)>>9))
		goto overlap;

	FUNC0(*bip && bi->bi_next && (*bip) != bi->bi_next);
	if (*bip)
		bi->bi_next = *bip;
	*bip = bi;
	FUNC4(bi);

	if (forwrite) {
		/* check if page is covered */
		sector_t sector = sh->dev[dd_idx].sector;
		for (bi=sh->dev[dd_idx].towrite;
		     sector < sh->dev[dd_idx].sector + STRIPE_SECTORS &&
			     bi && bi->bi_sector <= sector;
		     bi = FUNC3(bi, sh->dev[dd_idx].sector)) {
			if (bi->bi_sector + (bi->bi_size>>9) >= sector)
				sector = bi->bi_sector + (bi->bi_size>>9);
		}
		if (sector >= sh->dev[dd_idx].sector + STRIPE_SECTORS)
			FUNC5(R5_OVERWRITE, &sh->dev[dd_idx].flags);
	}

	FUNC2("added bi b#%llu to stripe s#%llu, disk %d.\n",
		(unsigned long long)(*bip)->bi_sector,
		(unsigned long long)sh->sector, dd_idx);
	FUNC9(&sh->stripe_lock);
	FUNC8(&sh->lock);

	if (conf->mddev->bitmap && firstwrite) {
		FUNC1(conf->mddev->bitmap, sh->sector,
				  STRIPE_SECTORS, 0);
		sh->bm_seq = conf->seq_flush+1;
		FUNC5(STRIPE_BIT_DELAY, &sh->state);
	}
	return 1;

 overlap:
	FUNC5(R5_Overlap, &sh->dev[dd_idx].flags);
	FUNC9(&sh->stripe_lock);
	FUNC8(&sh->lock);
	return 0;
}