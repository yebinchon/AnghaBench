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
struct TYPE_2__ {int elvpriv; int* count; int /*<<< orphan*/ * wait; } ;
struct request_queue {int* in_flight; int /*<<< orphan*/  queue_lock; TYPE_1__ rq; scalar_t__ request_fn; int /*<<< orphan*/ * flush_queue; int /*<<< orphan*/  queue_head; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct request_queue *q, bool drain_all)
{
	int i;

	while (true) {
		bool drain = false;

		FUNC6(q->queue_lock);

		FUNC3(q);
		if (drain_all)
			FUNC2(q);

		FUNC1(q);

		drain |= q->rq.elvpriv;

		/*
		 * Unfortunately, requests are queued at and tracked from
		 * multiple places and there's no single counter which can
		 * be drained.  Check all the queues and counters.
		 */
		if (drain_all) {
			drain |= !FUNC4(&q->queue_head);
			for (i = 0; i < 2; i++) {
				drain |= q->rq.count[i];
				drain |= q->in_flight[i];
				drain |= !FUNC4(&q->flush_queue[i]);
			}
		}

		FUNC7(q->queue_lock);

		if (!drain)
			break;
		FUNC5(10);
	}

	/*
	 * With queue marked dead, any woken up waiter will fail the
	 * allocation path, so the wakeup chaining is lost and we're
	 * left with hung waiters. We need to wake up those waiters.
	 */
	if (q->request_fn) {
		FUNC6(q->queue_lock);
		for (i = 0; i < FUNC0(q->rq.wait); i++)
			FUNC8(&q->rq.wait[i]);
		FUNC7(q->queue_lock);
	}

}