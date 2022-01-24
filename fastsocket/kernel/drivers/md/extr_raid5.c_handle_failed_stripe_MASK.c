#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stripe_head_state {int dummy; } ;
struct stripe_head {int /*<<< orphan*/  state; TYPE_2__* dev; int /*<<< orphan*/  sector; int /*<<< orphan*/  stripe_lock; } ;
struct r5conf {TYPE_3__* mddev; int /*<<< orphan*/  pending_full_writes; int /*<<< orphan*/  wait_for_overlap; TYPE_1__* disks; } ;
struct md_rdev {int /*<<< orphan*/  nr_pending; int /*<<< orphan*/  flags; } ;
struct bio {scalar_t__ bi_sector; struct bio* bi_next; int /*<<< orphan*/  bi_flags; } ;
struct TYPE_8__ {int /*<<< orphan*/  thread; int /*<<< orphan*/  bitmap; } ;
struct TYPE_7__ {scalar_t__ sector; int /*<<< orphan*/  flags; struct bio* toread; struct bio* written; struct bio* towrite; } ;
struct TYPE_6__ {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  R5_Insync ; 
 int /*<<< orphan*/  R5_LOCKED ; 
 int /*<<< orphan*/  R5_Overlap ; 
 int /*<<< orphan*/  R5_ReadError ; 
 int /*<<< orphan*/  R5_Wantfill ; 
 int /*<<< orphan*/  STRIPE_FULL_WRITE ; 
 scalar_t__ STRIPE_SECTORS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 struct bio* FUNC7 (struct bio*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct bio*) ; 
 struct md_rdev* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct md_rdev*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (struct md_rdev*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC19(struct r5conf *conf, struct stripe_head *sh,
				struct stripe_head_state *s, int disks,
				struct bio **return_bi)
{
	int i;
	for (i = disks; i--; ) {
		struct bio *bi;
		int bitmap_end = 0;

		if (FUNC17(R5_ReadError, &sh->dev[i].flags)) {
			struct md_rdev *rdev;
			FUNC10();
			rdev = FUNC9(conf->disks[i].rdev);
			if (rdev && FUNC17(In_sync, &rdev->flags))
				FUNC1(&rdev->nr_pending);
			else
				rdev = NULL;
			FUNC11();
			if (rdev) {
				if (!FUNC13(
					    rdev,
					    sh->sector,
					    STRIPE_SECTORS, 0))
					FUNC4(conf->mddev, rdev);
				FUNC12(rdev, conf->mddev);
			}
		}
		FUNC14(&sh->stripe_lock);
		/* fail all writes first */
		bi = sh->dev[i].towrite;
		sh->dev[i].towrite = NULL;
		FUNC15(&sh->stripe_lock);
		if (bi)
			bitmap_end = 1;

		if (FUNC16(R5_Overlap, &sh->dev[i].flags))
			FUNC18(&conf->wait_for_overlap);

		while (bi && bi->bi_sector <
			sh->dev[i].sector + STRIPE_SECTORS) {
			struct bio *nextbi = FUNC7(bi, sh->dev[i].sector);
			FUNC3(BIO_UPTODATE, &bi->bi_flags);
			if (!FUNC8(bi)) {
				FUNC6(conf->mddev);
				bi->bi_next = *return_bi;
				*return_bi = bi;
			}
			bi = nextbi;
		}
		if (bitmap_end)
			FUNC2(conf->mddev->bitmap, sh->sector,
				STRIPE_SECTORS, 0, 0);
		bitmap_end = 0;
		/* and fail all 'written' */
		bi = sh->dev[i].written;
		sh->dev[i].written = NULL;
		if (bi) bitmap_end = 1;
		while (bi && bi->bi_sector <
		       sh->dev[i].sector + STRIPE_SECTORS) {
			struct bio *bi2 = FUNC7(bi, sh->dev[i].sector);
			FUNC3(BIO_UPTODATE, &bi->bi_flags);
			if (!FUNC8(bi)) {
				FUNC6(conf->mddev);
				bi->bi_next = *return_bi;
				*return_bi = bi;
			}
			bi = bi2;
		}

		/* fail any reads if this device is non-operational and
		 * the data has not reached the cache yet.
		 */
		if (!FUNC17(R5_Wantfill, &sh->dev[i].flags) &&
		    (!FUNC17(R5_Insync, &sh->dev[i].flags) ||
		      FUNC17(R5_ReadError, &sh->dev[i].flags))) {
			FUNC14(&sh->stripe_lock);
			bi = sh->dev[i].toread;
			sh->dev[i].toread = NULL;
			FUNC15(&sh->stripe_lock);
			if (FUNC16(R5_Overlap, &sh->dev[i].flags))
				FUNC18(&conf->wait_for_overlap);
			while (bi && bi->bi_sector <
			       sh->dev[i].sector + STRIPE_SECTORS) {
				struct bio *nextbi =
					FUNC7(bi, sh->dev[i].sector);
				FUNC3(BIO_UPTODATE, &bi->bi_flags);
				if (!FUNC8(bi)) {
					bi->bi_next = *return_bi;
					*return_bi = bi;
				}
				bi = nextbi;
			}
		}
		if (bitmap_end)
			FUNC2(conf->mddev->bitmap, sh->sector,
					STRIPE_SECTORS, 0, 0);
		/* If we were in the middle of a write the parity block might
		 * still be locked - so just clear all R5_LOCKED flags
		 */
		FUNC3(R5_LOCKED, &sh->dev[i].flags);
	}

	if (FUNC16(STRIPE_FULL_WRITE, &sh->state))
		if (FUNC0(&conf->pending_full_writes))
			FUNC5(conf->mddev->thread);
}