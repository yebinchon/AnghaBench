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
struct request_queue {int dummy; } ;
struct request {int cmd_flags; scalar_t__ start_time; } ;
struct cfq_queue {unsigned long slice_end; int /*<<< orphan*/  sort_list; TYPE_1__* cfqg; int /*<<< orphan*/  dispatched; struct cfq_data* cfqd; } ;
struct cfq_data {unsigned long last_delayed_sync; unsigned long cfq_slice_idle; unsigned long cfq_group_idle; int /*<<< orphan*/  rq_in_driver; struct cfq_queue* active_queue; scalar_t__* cfq_fifo_expire; int /*<<< orphan*/ * rq_in_flight; } ;
struct TYPE_6__ {int /*<<< orphan*/  dispatched; } ;
struct TYPE_5__ {unsigned long last_end_request; } ;
struct TYPE_4__ {int /*<<< orphan*/  blkg; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int REQ_NOIDLE ; 
 TYPE_3__* FUNC1 (struct request*) ; 
 struct cfq_queue* FUNC2 (struct request*) ; 
 TYPE_2__* FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct cfq_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct cfq_queue*) ; 
 size_t FUNC8 (struct cfq_queue*) ; 
 scalar_t__ FUNC9 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC11 (struct cfq_data*,struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC12 (struct cfq_data*,struct cfq_queue*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC14 (struct cfq_data*) ; 
 int /*<<< orphan*/  FUNC15 (struct cfq_data*,struct cfq_queue*) ; 
 scalar_t__ FUNC16 (struct cfq_data*,struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC17 (struct cfq_data*,int) ; 
 scalar_t__ FUNC18 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC19 (struct cfq_data*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC20 (struct request*) ; 
 int /*<<< orphan*/  FUNC21 (struct request*) ; 
 int FUNC22 (struct request*) ; 
 int /*<<< orphan*/  FUNC23 (struct request*) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,unsigned long) ; 

__attribute__((used)) static void FUNC25(struct request_queue *q, struct request *rq)
{
	struct cfq_queue *cfqq = FUNC2(rq);
	struct cfq_data *cfqd = cfqq->cfqd;
	const int sync = FUNC22(rq);
	unsigned long now;

	now = jiffies;
	FUNC12(cfqd, cfqq, "complete rqnoidle %d",
		     !!(rq->cmd_flags & REQ_NOIDLE));

	FUNC19(cfqd);

	FUNC4(!cfqd->rq_in_driver);
	FUNC4(!cfqq->dispatched);
	cfqd->rq_in_driver--;
	cfqq->dispatched--;
	(FUNC1(rq))->dispatched--;
	FUNC6(&cfqq->cfqg->blkg,
			FUNC23(rq), FUNC21(rq),
			FUNC20(rq), FUNC22(rq));

	cfqd->rq_in_flight[FUNC8(cfqq)]--;

	if (sync) {
		FUNC3(rq)->last_end_request = now;
		if (!FUNC24(rq->start_time + cfqd->cfq_fifo_expire[1], now))
			cfqd->last_delayed_sync = now;
	}

	/*
	 * If this is the active queue, check if it needs to be expired,
	 * or if we want to idle in case it has no pending requests.
	 */
	if (cfqd->active_queue == cfqq) {
		const bool cfqq_empty = FUNC0(&cfqq->sort_list);

		if (FUNC7(cfqq)) {
			FUNC15(cfqd, cfqq);
			FUNC10(cfqq);
		}

		/*
		 * Should we wait for next request to come in before we expire
		 * the queue.
		 */
		if (FUNC16(cfqd, cfqq)) {
			unsigned long extend_sl = cfqd->cfq_slice_idle;
			if (!cfqd->cfq_slice_idle)
				extend_sl = cfqd->cfq_group_idle;
			cfqq->slice_end = jiffies + extend_sl;
			FUNC13(cfqq);
			FUNC12(cfqd, cfqq, "will busy wait");
		}

		/*
		 * Idling is not enabled on:
		 * - expired queues
		 * - idle-priority queues
		 * - async queues
		 * - queues with still some requests queued
		 * - when there is a close cooperator
		 */
		if (FUNC18(cfqq) || FUNC9(cfqq))
			FUNC17(cfqd, 1);
		else if (sync && cfqq_empty &&
			 !FUNC11(cfqd, cfqq)) {
			FUNC5(cfqd);
		}
	}

	if (!cfqd->rq_in_driver)
		FUNC14(cfqd);
}