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
struct cfq_queue {int /*<<< orphan*/  sort_list; } ;
struct cfq_data {TYPE_1__* queue; int /*<<< orphan*/  busy_queues; struct cfq_queue* active_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfq_data*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfq_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct cfq_data*,int) ; 
 scalar_t__ FUNC6 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC9(unsigned long data)
{
	struct cfq_data *cfqd = (struct cfq_data *) data;
	struct cfq_queue *cfqq;
	unsigned long flags;
	int timed_out = 1;

	FUNC3(cfqd, "idle timer fired");

	FUNC7(cfqd->queue->queue_lock, flags);

	cfqq = cfqd->active_queue;
	if (cfqq) {
		timed_out = 0;

		/*
		 * We saw a request before the queue expired, let it through
		 */
		if (FUNC1(cfqq))
			goto out_kick;

		/*
		 * expired
		 */
		if (FUNC6(cfqq))
			goto expire;

		/*
		 * only expire and reinvoke request handler, if there are
		 * other queues with pending requests
		 */
		if (!cfqd->busy_queues)
			goto out_cont;

		/*
		 * not expired and it has a request pending, let it dispatch
		 */
		if (!FUNC0(&cfqq->sort_list))
			goto out_kick;

		/*
		 * Queue depth flag is reset only when the idle didn't succeed
		 */
		FUNC2(cfqq);
	}
expire:
	FUNC5(cfqd, timed_out);
out_kick:
	FUNC4(cfqd);
out_cont:
	FUNC8(cfqd->queue->queue_lock, flags);
}