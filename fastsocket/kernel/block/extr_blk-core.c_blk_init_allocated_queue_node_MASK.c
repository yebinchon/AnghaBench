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
struct request_queue {int node; int /*<<< orphan*/  sg_reserved_size; int /*<<< orphan*/ * queue_lock; int /*<<< orphan*/  queue_flags; int /*<<< orphan*/  unplug_fn; int /*<<< orphan*/ * unprep_rq_fn; int /*<<< orphan*/ * prep_rq_fn; int /*<<< orphan*/ * request_fn; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  request_fn_proc ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  QUEUE_FLAG_DEFAULT ; 
 scalar_t__ FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  blk_queue_bio ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  generic_unplug_device ; 

struct request_queue *
FUNC4(struct request_queue *q, request_fn_proc *rfn,
			      spinlock_t *lock, int node_id)
{
	if (!q)
		return NULL;

	q->node = node_id;
	if (FUNC0(q))
		return NULL;

	q->request_fn		= rfn;
	q->prep_rq_fn		= NULL;
	q->unprep_rq_fn		= NULL;
	q->unplug_fn		= generic_unplug_device;
	q->queue_flags		= QUEUE_FLAG_DEFAULT;

	/* Override internal queue lock with supplied lock pointer */
	if (lock)
		q->queue_lock		= lock;

	/*
	 * This also sets hw/phys segments, boundary and size
	 */
	FUNC2(q, blk_queue_bio);

	q->sg_reserved_size = INT_MAX;

	/*
	 * all done
	 */
	if (!FUNC3(q, NULL)) {
		FUNC1(q);
		return q;
	}

	return NULL;
}