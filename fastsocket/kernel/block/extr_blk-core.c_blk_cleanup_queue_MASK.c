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
struct request_queue {scalar_t__ elevator; int /*<<< orphan*/  sysfs_lock; int /*<<< orphan*/  __queue_lock; int /*<<< orphan*/ * queue_lock; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  QUEUE_FLAG_DEAD ; 
 int /*<<< orphan*/  QUEUE_FLAG_NOMERGES ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct request_queue *q)
{
	spinlock_t *lock = q->queue_lock;

	/* mark @q DEAD, no new request or merges will be allowed afterwards */
	FUNC3(&q->sysfs_lock);
	FUNC6(QUEUE_FLAG_DEAD, q);

	FUNC7(lock);
	FUNC5(QUEUE_FLAG_NOMERGES, q);
	FUNC5(QUEUE_FLAG_DEAD, q);

	if (q->queue_lock != &q->__queue_lock)
		q->queue_lock = &q->__queue_lock;

	FUNC8(lock);
	FUNC4(&q->sysfs_lock);

	/*
	 * Drain all requests queued before DEAD marking.  The caller might
	 * be trying to tear down @q before its elevator is initialized, in
	 * which case we don't want to call into draining.
	 */
	if (q->elevator)
		FUNC0(q, true);

	/* @q won't process any more reuqest, flush async actions */
	FUNC2(q);

	/* @q is and will stay empty, shutdown and put */
	FUNC1(q);
}