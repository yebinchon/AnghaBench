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
struct throtl_grp {int* bps; int* iops; int /*<<< orphan*/ * slice_end; int /*<<< orphan*/ * bio_lists; scalar_t__* nr_queued; } ;
struct throtl_data {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct bio*) ; 
 struct bio* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC4 (struct throtl_data*,struct throtl_grp*,struct bio*,unsigned long*) ; 
 scalar_t__ FUNC5 (struct throtl_data*,struct throtl_grp*,struct bio*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (struct throtl_data*,struct throtl_grp*,int,scalar_t__) ; 
 scalar_t__ throtl_slice ; 
 scalar_t__ FUNC7 (struct throtl_data*,struct throtl_grp*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct throtl_data*,struct throtl_grp*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static bool FUNC10(struct throtl_data *td, struct throtl_grp *tg,
				struct bio *bio, unsigned long *wait)
{
	bool rw = FUNC1(bio);
	unsigned long bps_wait = 0, iops_wait = 0, max_wait = 0;

	/*
 	 * Currently whole state machine of group depends on first bio
	 * queued in the group bio list. So one should not be calling
	 * this function with a different bio if there are other bios
	 * queued.
	 */
	FUNC0(tg->nr_queued[rw] && bio != FUNC2(&tg->bio_lists[rw]));

	/* If tg->bps = -1, then BW is unlimited */
	if (tg->bps[rw] == -1 && tg->iops[rw] == -1) {
		if (wait)
			*wait = 0;
		return 1;
	}

	/*
	 * If previous slice expired, start a new one otherwise renew/extend
	 * existing slice to make sure it is at least throtl_slice interval
	 * long since now.
	 */
	if (FUNC7(td, tg, rw))
		FUNC8(td, tg, rw);
	else {
		if (FUNC9(tg->slice_end[rw], jiffies + throtl_slice))
			FUNC6(td, tg, rw, jiffies + throtl_slice);
	}

	if (FUNC4(td, tg, bio, &bps_wait)
	    && FUNC5(td, tg, bio, &iops_wait)) {
		if (wait)
			*wait = 0;
		return 1;
	}

	max_wait = FUNC3(bps_wait, iops_wait);

	if (wait)
		*wait = max_wait;

	if (FUNC9(tg->slice_end[rw], jiffies + max_wait))
		FUNC6(td, tg, rw, jiffies + max_wait);

	return 0;
}