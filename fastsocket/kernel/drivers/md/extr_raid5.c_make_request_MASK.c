#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stripe_head {int /*<<< orphan*/  state; } ;
struct r5conf {scalar_t__ reshape_progress; int reshape_safe; int /*<<< orphan*/  wait_for_overlap; int /*<<< orphan*/  preread_active_stripes; int /*<<< orphan*/  device_lock; } ;
struct mddev {scalar_t__ reshape_position; int suspend_lo; int suspend_hi; scalar_t__ reshape_backwards; struct r5conf* private; } ;
struct bio {int bi_rw; int bi_sector; int bi_size; int bi_phys_segments; int /*<<< orphan*/  bi_bdev; int /*<<< orphan*/  bi_flags; int /*<<< orphan*/ * bi_next; } ;
typedef  int sector_t ;

/* Variables and functions */
 int BIO_DISCARD ; 
 int BIO_FLUSH ; 
 int /*<<< orphan*/  BIO_RW_SYNCIO ; 
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MaxSector ; 
 int const READ ; 
 int RWA_MASK ; 
 int /*<<< orphan*/  STRIPE_DELAYED ; 
 int /*<<< orphan*/  STRIPE_EXPANDING ; 
 int /*<<< orphan*/  STRIPE_HANDLE ; 
 int /*<<< orphan*/  STRIPE_PREREAD_ACTIVE ; 
 scalar_t__ STRIPE_SECTORS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int const WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct stripe_head*,struct bio*,int,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct mddev*,struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct stripe_head* FUNC11 (struct r5conf*,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct mddev*,struct bio*) ; 
 int /*<<< orphan*/  FUNC13 (struct mddev*,struct bio*) ; 
 int /*<<< orphan*/  FUNC14 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC15 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC16 (struct mddev*,struct bio*) ; 
 int /*<<< orphan*/  FUNC17 (char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct r5conf*,int,int,int*,int /*<<< orphan*/ *) ; 
 int FUNC20 (struct bio*) ; 
 int /*<<< orphan*/  FUNC21 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,struct bio*) ; 
 scalar_t__ FUNC29 (int) ; 
 int /*<<< orphan*/  w ; 

__attribute__((used)) static int FUNC30(struct mddev *mddev, struct bio * bi)
{
	struct r5conf *conf = mddev->private;
	int dd_idx;
	sector_t new_sector;
	sector_t logical_sector, last_sector;
	struct stripe_head *sh;
	const int rw = FUNC4(bi);
	int remaining;

	if (FUNC29(bi->bi_rw & BIO_FLUSH)) {
		FUNC13(mddev, bi);
		return 0;
	}

	FUNC16(mddev, bi);

	if (rw == READ &&
	     mddev->reshape_position == MaxSector &&
	     FUNC7(mddev,bi))
		return 0;

	if (FUNC29(bi->bi_rw & BIO_DISCARD)) {
		return FUNC12(mddev, bi);
	}

	logical_sector = bi->bi_sector & ~((sector_t)STRIPE_SECTORS-1);
	last_sector = bi->bi_sector + (bi->bi_size>>9);
	bi->bi_next = NULL;
	bi->bi_phys_segments = 1;	/* over-loaded to count active stripes */

	for (;logical_sector < last_sector; logical_sector += STRIPE_SECTORS) {
		FUNC0(w);
		int previous;

	retry:
		previous = 0;
		FUNC18(&conf->wait_for_overlap, &w, TASK_UNINTERRUPTIBLE);
		if (FUNC29(conf->reshape_progress != MaxSector)) {
			/* spinlock is needed as reshape_progress may be
			 * 64bit on a 32bit platform, and so it might be
			 * possible to see a half-updated value
			 * Ofcourse reshape_progress could change after
			 * the lock is dropped, so once we get a reference
			 * to the stripe that we think it is, we will have
			 * to check again.
			 */
			FUNC24(&conf->device_lock);
			if (mddev->reshape_backwards
			    ? logical_sector < conf->reshape_progress
			    : logical_sector >= conf->reshape_progress) {
				previous = 1;
			} else {
				if (mddev->reshape_backwards
				    ? logical_sector < conf->reshape_safe
				    : logical_sector >= conf->reshape_safe) {
					FUNC25(&conf->device_lock);
					FUNC22();
					goto retry;
				}
			}
			FUNC25(&conf->device_lock);
		}

		new_sector = FUNC19(conf, logical_sector,
						  previous,
						  &dd_idx, NULL);
		FUNC17("raid456: make_request, sector %llu logical %llu\n",
			(unsigned long long)new_sector, 
			(unsigned long long)logical_sector);

		sh = FUNC11(conf, new_sector, previous,
				       (bi->bi_rw&RWA_MASK), 0);
		if (sh) {
			if (FUNC29(previous)) {
				/* expansion might have moved on while waiting for a
				 * stripe, so we must do the range check again.
				 * Expansion could still move past after this
				 * test, but as we are holding a reference to
				 * 'sh', we know that if that happens,
				 *  STRIPE_EXPANDING will get set and the expansion
				 * won't proceed until we finish with the stripe.
				 */
				int must_retry = 0;
				FUNC24(&conf->device_lock);
				if (mddev->reshape_backwards
				    ? logical_sector >= conf->reshape_progress
				    : logical_sector < conf->reshape_progress)
					/* mismatch, need to try again */
					must_retry = 1;
				FUNC25(&conf->device_lock);
				if (must_retry) {
					FUNC21(sh);
					FUNC22();
					goto retry;
				}
			}

			if (rw == WRITE &&
			    logical_sector >= mddev->suspend_lo &&
			    logical_sector < mddev->suspend_hi) {
				FUNC21(sh);
				/* As the suspend_* range is controlled by
				 * userspace, we want an interruptible
				 * wait.
				 */
				FUNC10(current);
				FUNC18(&conf->wait_for_overlap,
						&w, TASK_INTERRUPTIBLE);
				if (logical_sector >= mddev->suspend_lo &&
				    logical_sector < mddev->suspend_hi)
					FUNC22();
				goto retry;
			}

			if (FUNC27(STRIPE_EXPANDING, &sh->state) ||
			    !FUNC1(sh, bi, dd_idx, rw)) {
				/* Stripe is busy expanding or
				 * add failed due to overlap.  Flush everything
				 * and wait a while
				 */
				FUNC14(conf);
				FUNC21(sh);
				FUNC22();
				goto retry;
			}
			FUNC9(&conf->wait_for_overlap, &w);
			FUNC23(STRIPE_HANDLE, &sh->state);
			FUNC8(STRIPE_DELAYED, &sh->state);
			if (FUNC6(bi, BIO_RW_SYNCIO) &&
			    !FUNC26(STRIPE_PREREAD_ACTIVE, &sh->state))
				FUNC2(&conf->preread_active_stripes);
			FUNC21(sh);
		} else {
			/* cannot get stripe for read-ahead, just give-up */
			FUNC8(BIO_UPTODATE, &bi->bi_flags);
			FUNC9(&conf->wait_for_overlap, &w);
			break;
		}
			
	}

	remaining = FUNC20(bi);
	if (remaining == 0) {

		if ( rw == WRITE )
			FUNC15(mddev);

		FUNC28(FUNC3(bi->bi_bdev),
					 bi);
		FUNC5(bi, 0);
	}

	return 0;
}