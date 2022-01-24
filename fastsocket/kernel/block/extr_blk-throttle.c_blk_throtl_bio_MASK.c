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
struct throtl_grp {scalar_t__* nr_queued; int /*<<< orphan*/ * iops; int /*<<< orphan*/ * io_disp; int /*<<< orphan*/ * bps; int /*<<< orphan*/ * bytes_disp; int /*<<< orphan*/  blkg; } ;
struct throtl_data {int dummy; } ;
struct request_queue {int /*<<< orphan*/  queue_lock; struct throtl_data* td; } ;
struct blkio_cgroup {int dummy; } ;
struct bio {int bi_rw; int /*<<< orphan*/  bi_size; } ;

/* Variables and functions */
 int BIO_RW_THROTTLED ; 
 int READ ; 
 int REQ_SYNC ; 
 size_t WRITE ; 
 int FUNC0 (struct bio*) ; 
 scalar_t__ FUNC1 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct blkio_cgroup* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct throtl_data*,struct throtl_grp*,struct bio*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct throtl_grp*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct throtl_data*,struct throtl_grp*) ; 
 int /*<<< orphan*/  FUNC11 (struct throtl_data*,struct throtl_grp*,struct bio*) ; 
 int /*<<< orphan*/  FUNC12 (struct throtl_grp*,struct bio*) ; 
 struct throtl_grp* FUNC13 (struct throtl_data*,struct blkio_cgroup*) ; 
 struct throtl_grp* FUNC14 (struct throtl_data*) ; 
 int /*<<< orphan*/  FUNC15 (struct throtl_data*,struct throtl_grp*,char*,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct throtl_data*) ; 
 int /*<<< orphan*/  FUNC17 (struct throtl_data*,struct throtl_grp*) ; 
 int /*<<< orphan*/  FUNC18 (struct throtl_data*,struct throtl_grp*,int) ; 
 scalar_t__ FUNC19 (int) ; 

bool FUNC20(struct request_queue *q, struct bio *bio)
{
	struct throtl_data *td = q->td;
	struct throtl_grp *tg;
	bool rw = FUNC0(bio), update_disptime = true;
	struct blkio_cgroup *blkcg;
	bool throttled = false;

	if (FUNC1(bio, BIO_RW_THROTTLED)) {
		bio->bi_rw &= ~(1 << BIO_RW_THROTTLED);
		goto out;
	}

	/*
	 * A throtl_grp pointer retrieved under rcu can be used to access
	 * basic fields like stats and io rates. If a group has no rules,
	 * just update the dispatch stats in lockless manner and return.
	 */

	FUNC3();
	blkcg = FUNC7(current);
	tg = FUNC13(td, blkcg);
	if (tg) {
		FUNC17(td, tg);

		if (FUNC9(tg, rw)) {
			FUNC2(&tg->blkg, bio->bi_size,
					rw, bio->bi_rw & REQ_SYNC);
			FUNC4();
			goto out;
		}
	}
	FUNC4();

	/*
	 * Either group has not been allocated yet or it is not an unlimited
	 * IO group
	 */
	FUNC5(q->queue_lock);
	tg = FUNC14(td);
	if (FUNC19(!tg))
		goto out_unlock;

	if (tg->nr_queued[rw]) {
		/*
		 * There is already another bio queued in same dir. No
		 * need to update dispatch time.
		 */
		update_disptime = false;
		goto queue_bio;

	}

	/* Bio is with-in rate limit of group */
	if (FUNC8(td, tg, bio, NULL)) {
		FUNC12(tg, bio);

		/*
		 * We need to trim slice even when bios are not being queued
		 * otherwise it might happen that a bio is not queued for
		 * a long time and slice keeps on extending and trim is not
		 * called for a long time. Now if limits are reduced suddenly
		 * we take into account all the IO dispatched so far at new
		 * low rate and * newly queued IO gets a really long dispatch
		 * time.
		 *
		 * So keep on trimming slice even if bio is not queued.
		 */
		FUNC18(td, tg, rw);
		goto out_unlock;
	}

queue_bio:
	FUNC15(td, tg, "[%c] bio. bdisp=%u sz=%u bps=%llu"
			" iodisp=%u iops=%u queued=%d/%d",
			rw == READ ? 'R' : 'W',
			tg->bytes_disp[rw], bio->bi_size, tg->bps[rw],
			tg->io_disp[rw], tg->iops[rw],
			tg->nr_queued[READ], tg->nr_queued[WRITE]);

	FUNC11(q->td, tg, bio);
	throttled = true;

	if (update_disptime) {
		FUNC10(td, tg);
		FUNC16(td);
	}

out_unlock:
	FUNC6(q->queue_lock);
out:
	return throttled;
}