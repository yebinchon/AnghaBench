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
struct TYPE_2__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct request_queue {int unplug_thresh; int unplug_delay; int /*<<< orphan*/  limits; TYPE_1__ unplug_timer; int /*<<< orphan*/  nr_batching; int /*<<< orphan*/ * make_request_fn; int /*<<< orphan*/  nr_requests; } ;
typedef  int /*<<< orphan*/  make_request_fn ;

/* Variables and functions */
 int /*<<< orphan*/  BLKDEV_MAX_RQ ; 
 int /*<<< orphan*/  BLK_BATCH_REQ ; 
 int /*<<< orphan*/  BLK_BOUNCE_HIGH ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  blk_unplug_timeout ; 
 int FUNC4 (int) ; 

void FUNC5(struct request_queue *q, make_request_fn *mfn)
{
	/*
	 * set defaults
	 */
	q->nr_requests = BLKDEV_MAX_RQ;

	q->make_request_fn = mfn;
	FUNC2(q, 511);
	FUNC1(q);
	q->nr_batching = BLK_BATCH_REQ;

	q->unplug_thresh = 4;		/* hmm */
	q->unplug_delay = FUNC4(3);	/* 3 milliseconds */
	if (q->unplug_delay == 0)
		q->unplug_delay = 1;

	q->unplug_timer.function = blk_unplug_timeout;
	q->unplug_timer.data = (unsigned long)q;

	FUNC3(&q->limits);

	/*
	 * by default assume old behaviour and bounce for any highmem page
	 */
	FUNC0(q, BLK_BOUNCE_HIGH);
}