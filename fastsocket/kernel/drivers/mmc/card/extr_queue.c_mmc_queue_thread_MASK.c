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
struct request_queue {int /*<<< orphan*/  queue_lock; } ;
struct request {int dummy; } ;
struct mmc_queue {int /*<<< orphan*/  thread_sem; int /*<<< orphan*/  (* issue_fn ) (struct mmc_queue*,struct request*) ;struct request* req; struct request_queue* queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PF_MEMALLOC ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 struct request* FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mmc_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(void *d)
{
	struct mmc_queue *mq = d;
	struct request_queue *q = mq->queue;

	current->flags |= PF_MEMALLOC;

	FUNC2(&mq->thread_sem);
	do {
		struct request *req = NULL;

		FUNC6(q->queue_lock);
		FUNC5(TASK_INTERRUPTIBLE);
		if (!FUNC1(q))
			req = FUNC0(q);
		mq->req = req;
		FUNC7(q->queue_lock);

		if (!req) {
			if (FUNC3()) {
				FUNC5(TASK_RUNNING);
				break;
			}
			FUNC9(&mq->thread_sem);
			FUNC4();
			FUNC2(&mq->thread_sem);
			continue;
		}
		FUNC5(TASK_RUNNING);

		mq->issue_fn(mq, req);
	} while (1);
	FUNC9(&mq->thread_sem);

	return 0;
}