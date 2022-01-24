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
struct request {int dummy; } ;
struct as_io_context {unsigned long last_end_request; scalar_t__ last_request_pos; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; int /*<<< orphan*/  nr_dispatched; int /*<<< orphan*/  nr_queued; } ;
struct as_data {int dummy; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  AS_TASK_IORUNNING ; 
 int /*<<< orphan*/  AS_TASK_IOSTARTED ; 
 int BLK_RW_SYNC ; 
 scalar_t__ MAX_THINKTIME ; 
 int /*<<< orphan*/  FUNC0 (struct as_data*,struct as_io_context*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct as_data*,struct as_io_context*,unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 scalar_t__ FUNC4 (struct request*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC5 (unsigned long,scalar_t__) ; 
 int FUNC6 (struct request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct as_data *ad, struct as_io_context *aic,
				struct request *rq)
{
	int data_dir = FUNC6(rq);
	unsigned long thinktime = 0;
	sector_t seek_dist;

	if (aic == NULL)
		return;

	if (data_dir == BLK_RW_SYNC) {
		unsigned long in_flight = FUNC2(&aic->nr_queued)
					+ FUNC2(&aic->nr_dispatched);
		FUNC8(&aic->lock);
		if (FUNC10(AS_TASK_IORUNNING, &aic->state) ||
			FUNC10(AS_TASK_IOSTARTED, &aic->state)) {
			/* Calculate read -> read thinktime */
			if (FUNC10(AS_TASK_IORUNNING, &aic->state)
							&& in_flight == 0) {
				thinktime = jiffies - aic->last_end_request;
				thinktime = FUNC5(thinktime, MAX_THINKTIME-1);
			}
			FUNC1(ad, aic, thinktime);

			/* Calculate read -> read seek distance */
			if (aic->last_request_pos < FUNC3(rq))
				seek_dist = FUNC3(rq) -
					    aic->last_request_pos;
			else
				seek_dist = aic->last_request_pos -
					    FUNC3(rq);
			FUNC0(ad, aic, seek_dist);
		}
		aic->last_request_pos = FUNC3(rq) + FUNC4(rq);
		FUNC7(AS_TASK_IOSTARTED, &aic->state);
		FUNC9(&aic->lock);
	}
}