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
struct request_queue {int /*<<< orphan*/  queue_lock; } ;
struct request {void* special; int /*<<< orphan*/  cmd_type; } ;

/* Variables and functions */
 int ELEVATOR_INSERT_BACK ; 
 int ELEVATOR_INSERT_FRONT ; 
 int /*<<< orphan*/  REQ_TYPE_SPECIAL ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,struct request*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,struct request*) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct request*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC7(struct request_queue *q, struct request *rq,
			int at_head, void *data)
{
	int where = at_head ? ELEVATOR_INSERT_FRONT : ELEVATOR_INSERT_BACK;
	unsigned long flags;

	/*
	 * tell I/O scheduler that this isn't a regular read/write (ie it
	 * must not attempt merges on this) and that it acts as a soft
	 * barrier
	 */
	rq->cmd_type = REQ_TYPE_SPECIAL;

	rq->special = data;

	FUNC5(q->queue_lock, flags);

	/*
	 * If command is tagged, release the tag
	 */
	if (FUNC3(rq))
		FUNC2(q, rq);

	FUNC4(rq, 1);
	FUNC1(q, rq, where, 0);
	FUNC0(q);
	FUNC6(q->queue_lock, flags);
}