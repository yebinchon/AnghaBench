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
struct request {int cmd_flags; } ;
struct cfq_queue {TYPE_1__* cfqg; scalar_t__ last_request_pos; int /*<<< orphan*/  meta_pending; } ;
struct cfq_io_context {int dummy; } ;
struct cfq_data {int busy_queues; int /*<<< orphan*/  queue; struct cfq_queue* active_queue; int /*<<< orphan*/  rq_queued; } ;
struct TYPE_2__ {int /*<<< orphan*/  blkg; } ;

/* Variables and functions */
 scalar_t__ PAGE_CACHE_SIZE ; 
 int REQ_META ; 
 struct cfq_io_context* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 scalar_t__ FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct cfq_data*,struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC9 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct cfq_data*,struct cfq_queue*) ; 
 scalar_t__ FUNC11 (struct cfq_data*,struct cfq_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC12 (struct cfq_data*,struct cfq_queue*,struct cfq_io_context*) ; 
 int /*<<< orphan*/  FUNC13 (struct cfq_data*,struct cfq_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC14 (struct cfq_data*,struct cfq_io_context*) ; 

__attribute__((used)) static void
FUNC15(struct cfq_data *cfqd, struct cfq_queue *cfqq,
		struct request *rq)
{
	struct cfq_io_context *cic = FUNC0(rq);

	cfqd->rq_queued++;
	if (rq->cmd_flags & REQ_META)
		cfqq->meta_pending++;

	FUNC14(cfqd, cic);
	FUNC13(cfqd, cfqq, rq);
	FUNC12(cfqd, cfqq, cic);

	cfqq->last_request_pos = FUNC3(rq) + FUNC4(rq);

	if (cfqq == cfqd->active_queue) {
		/*
		 * Remember that we saw a request from this process, but
		 * don't start queuing just yet. Otherwise we risk seeing lots
		 * of tiny requests, because we disrupt the normal plugging
		 * and merging. If the request is already larger than a single
		 * page, let it rip immediately. For that case we assume that
		 * merging is already done. Ditto for a busy system that
		 * has other work pending, don't risk delaying until the
		 * idle timer unplug to continue working.
		 */
		if (FUNC6(cfqq)) {
			if (FUNC2(rq) > PAGE_CACHE_SIZE ||
			    cfqd->busy_queues > 1) {
				FUNC8(cfqd, cfqq);
				FUNC7(cfqq);
				FUNC1(cfqd->queue);
			} else {
				FUNC5(
						&cfqq->cfqg->blkg);
				FUNC9(cfqq);
			}
		}
	} else if (FUNC11(cfqd, cfqq, rq)) {
		/*
		 * not the active queue - expire current slice if it is
		 * idle and has expired it's mean thinktime or this new queue
		 * has some old slice time left and is of higher priority or
		 * this new queue is RT and the current one is BE
		 */
		FUNC10(cfqd, cfqq);
		FUNC1(cfqd->queue);
	}
}