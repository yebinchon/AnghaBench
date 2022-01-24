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
struct cfq_queue {scalar_t__ cfqg; int /*<<< orphan*/  meta_pending; int /*<<< orphan*/  sort_list; TYPE_1__* service_tree; } ;
struct cfq_data {scalar_t__ serving_type; int /*<<< orphan*/  active_cic; struct cfq_queue* active_queue; } ;
struct TYPE_2__ {int count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int REQ_META ; 
 scalar_t__ SYNC_NOIDLE_WORKLOAD ; 
 int /*<<< orphan*/  FUNC1 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfq_queue*) ; 
 scalar_t__ FUNC3 (struct cfq_queue*) ; 
 scalar_t__ FUNC4 (struct cfq_queue*) ; 
 scalar_t__ FUNC5 (struct cfq_data*,struct cfq_queue*,struct request*) ; 
 scalar_t__ FUNC6 (struct cfq_queue*) ; 
 scalar_t__ FUNC7 (struct cfq_queue*) ; 
 scalar_t__ FUNC8 (struct request*) ; 

__attribute__((used)) static bool
FUNC9(struct cfq_data *cfqd, struct cfq_queue *new_cfqq,
		   struct request *rq)
{
	struct cfq_queue *cfqq;

	cfqq = cfqd->active_queue;
	if (!cfqq)
		return false;

	if (FUNC3(new_cfqq))
		return false;

	if (FUNC3(cfqq))
		return true;

	/*
	 * if the new request is sync, but the currently running queue is
	 * not, let the sync request have priority.
	 */
	if (FUNC8(rq) && !FUNC1(cfqq))
		return true;

	if (new_cfqq->cfqg != cfqq->cfqg)
		return false;

	if (FUNC6(cfqq))
		return true;

	/* Allow preemption only if we are idling on sync-noidle tree */
	if (cfqd->serving_type == SYNC_NOIDLE_WORKLOAD &&
	    FUNC7(new_cfqq) == SYNC_NOIDLE_WORKLOAD &&
	    new_cfqq->service_tree->count == 2 &&
	    FUNC0(&cfqq->sort_list))
		return true;

	/*
	 * So both queues are sync. Let the new request get disk time if
	 * it's a metadata request and the current queue is doing regular IO.
	 */
	if ((rq->cmd_flags & REQ_META) && !cfqq->meta_pending)
		return true;

	/*
	 * Allow an RT request to pre-empt an ongoing non-RT cfqq timeslice.
	 */
	if (FUNC4(new_cfqq) && !FUNC4(cfqq))
		return true;

	if (!cfqd->active_cic || !FUNC2(cfqq))
		return false;

	/*
	 * if this request is as-good as one we would expect from the
	 * current cfqq, let it preempt
	 */
	if (FUNC5(cfqd, cfqq, rq))
		return true;

	return false;
}