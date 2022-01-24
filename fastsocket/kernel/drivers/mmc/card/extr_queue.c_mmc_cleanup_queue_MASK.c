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
struct request_queue {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/ * queuedata; } ;
struct mmc_queue {int /*<<< orphan*/ * card; int /*<<< orphan*/ * bounce_buf; int /*<<< orphan*/ * sg; int /*<<< orphan*/ * bounce_sg; int /*<<< orphan*/  thread; struct request_queue* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_queue*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC6(struct mmc_queue *mq)
{
	struct request_queue *q = mq->queue;
	unsigned long flags;

	/* Make sure the queue isn't suspended, as that will deadlock */
	FUNC3(mq);

	/* Then terminate our worker thread */
	FUNC2(mq->thread);

	/* Empty the queue */
	FUNC4(q->queue_lock, flags);
	q->queuedata = NULL;
	FUNC0(q);
	FUNC5(q->queue_lock, flags);

 	if (mq->bounce_sg)
 		FUNC1(mq->bounce_sg);
 	mq->bounce_sg = NULL;

	FUNC1(mq->sg);
	mq->sg = NULL;

	if (mq->bounce_buf)
		FUNC1(mq->bounce_buf);
	mq->bounce_buf = NULL;

	mq->card = NULL;
}