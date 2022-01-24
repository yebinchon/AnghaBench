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
struct request_queue {int /*<<< orphan*/ * in_flight; } ;
struct request {int /*<<< orphan*/  queuelist; struct request_queue* q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (struct request*) ; 
 int /*<<< orphan*/  FUNC6 (struct request*) ; 

void FUNC7(struct request *rq)
{
	struct request_queue *q = rq->q;

	FUNC0(FUNC4(&rq->queuelist));
	FUNC0(FUNC1(rq));

	FUNC3(&rq->queuelist);

	/*
	 * the time frame between a request being removed from the lists
	 * and to it is freed is accounted as io that is in progress at
	 * the driver side.
	 */
	if (FUNC2(rq)) {
		q->in_flight[FUNC5(rq)]++;
		FUNC6(rq);
	}
}