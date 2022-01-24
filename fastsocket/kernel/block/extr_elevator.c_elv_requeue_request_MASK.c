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
struct request {int cmd_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELEVATOR_INSERT_REQUEUE ; 
 int REQ_SORTED ; 
 int REQ_STARTED ; 
 scalar_t__ FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,struct request*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (struct request*) ; 

void FUNC4(struct request_queue *q, struct request *rq)
{
	/*
	 * it already went through dequeue, we need to decrement the
	 * in_flight count again
	 */
	if (FUNC0(rq)) {
		q->in_flight[FUNC3(rq)]--;
		if (rq->cmd_flags & REQ_SORTED)
			FUNC1(q, rq);
	}

	rq->cmd_flags &= ~REQ_STARTED;

	FUNC2(q, rq, ELEVATOR_INSERT_REQUEUE);
}