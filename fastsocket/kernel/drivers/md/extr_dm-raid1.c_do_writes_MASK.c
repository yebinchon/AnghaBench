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
struct bio_list {int head; } ;
struct mirror_set {int log_failure; int leg_failure; int /*<<< orphan*/  lock; struct bio_list failures; int /*<<< orphan*/  rh; struct bio_list writes; } ;
struct dm_dirty_log {TYPE_1__* type; } ;
struct bio {int bi_rw; } ;
typedef  int /*<<< orphan*/  region_t ;
struct TYPE_2__ {scalar_t__ (* is_remote_recovering ) (struct dm_dirty_log*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int BIO_DISCARD ; 
 int BIO_FLUSH ; 
#define  DM_RH_CLEAN 131 
#define  DM_RH_DIRTY 130 
#define  DM_RH_NOSYNC 129 
#define  DM_RH_RECOVERING 128 
 int /*<<< orphan*/  FUNC0 (struct bio_list*,struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_list*,struct bio_list*) ; 
 struct bio* FUNC3 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct mirror_set*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct bio*) ; 
 struct dm_dirty_log* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct bio_list*) ; 
 int /*<<< orphan*/  FUNC11 (struct mirror_set*,struct bio*) ; 
 scalar_t__ FUNC12 (struct mirror_set*) ; 
 int /*<<< orphan*/  FUNC13 (struct bio*) ; 
 int /*<<< orphan*/  FUNC14 (struct mirror_set*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (struct dm_dirty_log*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct mirror_set*) ; 

__attribute__((used)) static void FUNC21(struct mirror_set *ms, struct bio_list *writes)
{
	int state;
	struct bio *bio;
	struct bio_list sync, nosync, recover, *this_list = NULL;
	struct bio_list requeue;
	struct dm_dirty_log *log = FUNC7(ms->rh);
	region_t region;

	if (!writes->head)
		return;

	/*
	 * Classify each write.
	 */
	FUNC1(&sync);
	FUNC1(&nosync);
	FUNC1(&recover);
	FUNC1(&requeue);

	while ((bio = FUNC3(writes))) {
		if ((bio->bi_rw & BIO_FLUSH) ||
		    (bio->bi_rw & BIO_DISCARD)) {
			FUNC0(&sync, bio);
			continue;
		}

		region = FUNC5(ms->rh, bio);

		if (log->type->is_remote_recovering &&
		    log->type->is_remote_recovering(log, region)) {
			FUNC0(&requeue, bio);
			continue;
		}

		state = FUNC9(ms->rh, region, 1);
		switch (state) {
		case DM_RH_CLEAN:
		case DM_RH_DIRTY:
			this_list = &sync;
			break;

		case DM_RH_NOSYNC:
			this_list = &nosync;
			break;

		case DM_RH_RECOVERING:
			this_list = &recover;
			break;
		}

		FUNC0(this_list, bio);
	}

	/*
	 * Add bios that are delayed due to remote recovery
	 * back on to the write queue
	 */
	if (FUNC19(requeue.head)) {
		FUNC16(&ms->lock);
		FUNC2(&ms->writes, &requeue);
		FUNC17(&ms->lock);
		FUNC4(ms);
	}

	/*
	 * Increment the pending counts for any regions that will
	 * be written to (writes to recover regions are going to
	 * be delayed).
	 */
	FUNC10(ms->rh, &sync);
	FUNC10(ms->rh, &nosync);

	/*
	 * If the flush fails on a previous call and succeeds here,
	 * we must not reset the log_failure variable.  We need
	 * userspace interaction to do that.
	 */
	ms->log_failure = FUNC8(ms->rh) ? 1 : ms->log_failure;

	/*
	 * Dispatch io.
	 */
	if (FUNC19(ms->log_failure) && FUNC12(ms)) {
		FUNC16(&ms->lock);
		FUNC2(&ms->failures, &sync);
		FUNC17(&ms->lock);
		FUNC20(ms);
	} else
		while ((bio = FUNC3(&sync)))
			FUNC11(ms, bio);

	while ((bio = FUNC3(&recover)))
		FUNC6(ms->rh, bio);

	while ((bio = FUNC3(&nosync))) {
		if (FUNC19(ms->leg_failure) && FUNC12(ms)) {
			FUNC16(&ms->lock);
			FUNC0(&ms->failures, bio);
			FUNC17(&ms->lock);
			FUNC20(ms);
		} else {
			FUNC15(FUNC14(ms), bio);
			FUNC13(bio);
		}
	}
}