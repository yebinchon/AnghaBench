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
struct request_queue {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  (* request_fn ) (struct request_queue*) ;} ;
struct request {scalar_t__ cmd_type; int /*<<< orphan*/  errors; int /*<<< orphan*/  cmd_flags; int /*<<< orphan*/ * end_io; struct gendisk* rq_disk; } ;
struct gendisk {int dummy; } ;
typedef  int /*<<< orphan*/  rq_end_io_fn ;

/* Variables and functions */
 int ELEVATOR_INSERT_BACK ; 
 int ELEVATOR_INSERT_FRONT ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  REQ_QUIET ; 
 scalar_t__ REQ_TYPE_PM_RESUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,struct request*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct request_queue*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(struct request_queue *q, struct gendisk *bd_disk,
			   struct request *rq, int at_head,
			   rq_end_io_fn *done)
{
	int where = at_head ? ELEVATOR_INSERT_FRONT : ELEVATOR_INSERT_BACK;

	FUNC0(FUNC5());

	rq->rq_disk = bd_disk;
	rq->end_io = done;

	FUNC6(q->queue_lock);

	if (FUNC9(FUNC4(q))) {
		rq->cmd_flags |= REQ_QUIET; 
		rq->errors = -ENXIO;
		FUNC1(rq, rq->errors);
		FUNC7(q->queue_lock);
		return;
	}

	FUNC2(q, rq, where, 1);
	FUNC3(q);
	/* the queue is stopped so it won't be plugged+unplugged */
	if (rq->cmd_type == REQ_TYPE_PM_RESUME)
		q->request_fn(q);
	FUNC7(q->queue_lock);
}