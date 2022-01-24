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
struct request_queue {int /*<<< orphan*/  queue_lock; } ;
struct request {TYPE_2__* rq_disk; } ;
struct TYPE_3__ {scalar_t__ make_it_fail; } ;
struct TYPE_4__ {TYPE_1__ part0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  ELEVATOR_INSERT_BACK ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,struct request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 scalar_t__ FUNC5 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC6 (struct request*,int) ; 
 int /*<<< orphan*/  fail_make_request ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct request_queue *q, struct request *rq)
{
	unsigned long flags;

	if (FUNC5(q, rq))
		return -EIO;

#ifdef CONFIG_FAIL_MAKE_REQUEST
	if (rq->rq_disk && rq->rq_disk->part0.make_it_fail &&
	    should_fail(&fail_make_request, blk_rq_bytes(rq)))
		return -EIO;
#endif

	FUNC8(q->queue_lock, flags);
	if (FUNC10(FUNC2(q))) {
		FUNC9(q->queue_lock, flags);
		return -ENODEV;
	}

	/*
	 * Submitting request must be dequeued before calling this function
	 * because it will be linked to another request_queue
	 */
	FUNC0(FUNC3(rq));

	FUNC6(rq, 1);
	FUNC1(q, rq, ELEVATOR_INSERT_BACK, 0);

	FUNC9(q->queue_lock, flags);

	return 0;
}