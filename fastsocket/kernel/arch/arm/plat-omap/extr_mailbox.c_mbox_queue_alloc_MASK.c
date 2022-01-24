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
struct request_queue {struct omap_mbox* queuedata; } ;
struct omap_mbox_queue {int /*<<< orphan*/  work; struct request_queue* queue; int /*<<< orphan*/  lock; } ;
struct omap_mbox {int dummy; } ;
typedef  int /*<<< orphan*/  request_fn_proc ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void (*) (struct work_struct*)) ; 
 struct request_queue* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_mbox_queue*) ; 
 struct omap_mbox_queue* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct omap_mbox_queue *FUNC5(struct omap_mbox *mbox,
					request_fn_proc * proc,
					void (*work) (struct work_struct *))
{
	struct request_queue *q;
	struct omap_mbox_queue *mq;

	mq = FUNC3(sizeof(struct omap_mbox_queue), GFP_KERNEL);
	if (!mq)
		return NULL;

	FUNC4(&mq->lock);

	q = FUNC1(proc, &mq->lock);
	if (!q)
		goto error;
	q->queuedata = mbox;
	mq->queue = q;

	FUNC0(&mq->work, work);

	return mq;
error:
	FUNC2(mq);
	return NULL;
}