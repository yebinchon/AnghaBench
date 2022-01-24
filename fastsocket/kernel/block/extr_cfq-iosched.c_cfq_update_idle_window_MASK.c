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
struct cfq_queue {int* queued; TYPE_1__* next_rq; } ;
struct cfq_io_context {scalar_t__ ttime_mean; int /*<<< orphan*/  ttime_samples; TYPE_2__* ioc; } ;
struct cfq_data {scalar_t__ cfq_slice_idle; } ;
struct TYPE_4__ {int /*<<< orphan*/  nr_tasks; } ;
struct TYPE_3__ {int cmd_flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cfq_queue*) ; 
 int REQ_NOIDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cfq_queue*) ; 
 int FUNC3 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfq_queue*) ; 
 scalar_t__ FUNC5 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct cfq_data*,struct cfq_queue*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC9 (struct cfq_queue*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct cfq_data *cfqd, struct cfq_queue *cfqq,
		       struct cfq_io_context *cic)
{
	int old_idle, enable_idle;

	/*
	 * Don't idle for async or idle io prio class
	 */
	if (!FUNC4(cfqq) || FUNC5(cfqq))
		return;

	enable_idle = old_idle = FUNC3(cfqq);

	if (cfqq->queued[0] + cfqq->queued[1] >= 4)
		FUNC8(cfqq);

	if (cfqq->next_rq && (cfqq->next_rq->cmd_flags & REQ_NOIDLE))
		enable_idle = 0;
	else if (!FUNC1(&cic->ioc->nr_tasks) || !cfqd->cfq_slice_idle ||
	    (!FUNC2(cfqq) && FUNC0(cfqq)))
		enable_idle = 0;
	else if (FUNC10(cic->ttime_samples)) {
		if (cic->ttime_mean > cfqd->cfq_slice_idle)
			enable_idle = 0;
		else
			enable_idle = 1;
	}

	if (old_idle != enable_idle) {
		FUNC7(cfqd, cfqq, "idle=%d", enable_idle);
		if (enable_idle)
			FUNC9(cfqq);
		else
			FUNC6(cfqq);
	}
}