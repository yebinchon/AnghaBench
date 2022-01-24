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
struct mmc_queue {int flags; int /*<<< orphan*/  thread_sem; struct request_queue* queue; } ;

/* Variables and functions */
 int MMC_QUEUE_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mmc_queue *mq)
{
	struct request_queue *q = mq->queue;
	unsigned long flags;

	if (mq->flags & MMC_QUEUE_SUSPENDED) {
		mq->flags &= ~MMC_QUEUE_SUSPENDED;

		FUNC3(&mq->thread_sem);

		FUNC1(q->queue_lock, flags);
		FUNC0(q);
		FUNC2(q->queue_lock, flags);
	}
}