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
struct cfq_queue {TYPE_1__* cfqg; scalar_t__ dispatched; int /*<<< orphan*/  new_cfqq; int /*<<< orphan*/  sort_list; } ;
struct cfq_data {scalar_t__ cfq_group_idle; int /*<<< orphan*/  idle_slice_timer; int /*<<< orphan*/  rq_queued; struct cfq_queue* active_queue; } ;
struct TYPE_2__ {int nr_cfqq; scalar_t__ dispatched; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cfq_queue*) ; 
 scalar_t__ FUNC2 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfq_data*) ; 
 struct cfq_queue* FUNC4 (struct cfq_data*,struct cfq_queue*) ; 
 struct cfq_queue* FUNC5 (struct cfq_data*,struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct cfq_queue*,struct cfq_queue*) ; 
 scalar_t__ FUNC7 (struct cfq_data*,struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct cfq_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct cfq_queue*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct cfq_queue *FUNC11(struct cfq_data *cfqd)
{
	struct cfq_queue *cfqq, *new_cfqq = NULL;

	cfqq = cfqd->active_queue;
	if (!cfqq)
		goto new_queue;

	if (!cfqd->rq_queued)
		return NULL;

	/*
	 * We were waiting for group to get backlogged. Expire the queue
	 */
	if (FUNC2(cfqq) && !FUNC0(&cfqq->sort_list))
		goto expire;

	/*
	 * The active queue has run out of time, expire it and select new.
	 */
	if (FUNC9(cfqq) && !FUNC1(cfqq)) {
		/*
		 * If slice had not expired at the completion of last request
		 * we might not have turned on wait_busy flag. Don't expire
		 * the queue yet. Allow the group to get backlogged.
		 *
		 * The very fact that we have used the slice, that means we
		 * have been idling all along on this queue and it should be
		 * ok to wait for this request to complete.
		 */
		if (cfqq->cfqg->nr_cfqq == 1 && FUNC0(&cfqq->sort_list)
		    && cfqq->dispatched && FUNC7(cfqd, cfqq)) {
			cfqq = NULL;
			goto keep_queue;
		} else
			goto check_group_idle;
	}

	/*
	 * The active queue has requests and isn't expired, allow it to
	 * dispatch.
	 */
	if (!FUNC0(&cfqq->sort_list))
		goto keep_queue;

	/*
	 * If another queue has a request waiting within our mean seek
	 * distance, let it run.  The expire code will check for close
	 * cooperators and put the close queue at the front of the service
	 * tree.  If possible, merge the expiring queue with the new cfqq.
	 */
	new_cfqq = FUNC4(cfqd, cfqq);
	if (new_cfqq) {
		if (!cfqq->new_cfqq)
			FUNC6(cfqq, new_cfqq);
		goto expire;
	}

	/*
	 * No requests pending. If the active queue still has requests in
	 * flight or is idling for a new request, allow either of these
	 * conditions to happen (or time out) before selecting a new queue.
	 */
	if (FUNC10(&cfqd->idle_slice_timer)) {
		cfqq = NULL;
		goto keep_queue;
	}

	if (cfqq->dispatched && FUNC7(cfqd, cfqq)) {
		cfqq = NULL;
		goto keep_queue;
	}

	/*
	 * If group idle is enabled and there are requests dispatched from
	 * this group, wait for requests to complete.
	 */
check_group_idle:
	if (cfqd->cfq_group_idle && cfqq->cfqg->nr_cfqq == 1
	    && cfqq->cfqg->dispatched) {
		cfqq = NULL;
		goto keep_queue;
	}

expire:
	FUNC8(cfqd, 0);
new_queue:
	/*
	 * Current queue expired. Check if we have to switch to a new
	 * service tree
	 */
	if (!new_cfqq)
		FUNC3(cfqd);

	cfqq = FUNC5(cfqd, new_cfqq);
keep_queue:
	return cfqq;
}