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
struct TYPE_2__ {int /*<<< orphan*/  next; } ;
struct request_queue {TYPE_1__ queue_head; } ;
struct request {int /*<<< orphan*/  cmd_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  REQ_QUIET ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 struct request* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*,struct request*) ; 

void FUNC6(struct request_queue *q)
{
	struct request *rq;

	FUNC1(q);

	while (!FUNC3(&q->queue_head)) {
		rq = FUNC4(q->queue_head.next);
		rq->cmd_flags |= REQ_QUIET;
		FUNC5(q, rq);
		/*
		 * Mark this request as started so we don't trigger
		 * any debug logic in the end I/O path.
		 */
		FUNC2(rq);
		FUNC0(rq, -EIO);
	}
}