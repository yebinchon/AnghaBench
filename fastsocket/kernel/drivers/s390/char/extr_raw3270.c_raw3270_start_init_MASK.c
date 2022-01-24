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
struct raw3270_view {TYPE_1__* dev; } ;
struct raw3270_request {int rc; int /*<<< orphan*/ * callback_data; int /*<<< orphan*/ * callback; } ;
struct raw3270 {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int FUNC0 (struct raw3270*,struct raw3270_view*,struct raw3270_request*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct raw3270_request*) ; 
 scalar_t__ raw3270_registered ; 
 int /*<<< orphan*/  FUNC4 (struct raw3270_request*) ; 
 int /*<<< orphan*/  raw3270_wait_queue ; 
 int /*<<< orphan*/ * raw3270_wake_init ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct raw3270 *rp, struct raw3270_view *view,
		   struct raw3270_request *rq)
{
	unsigned long flags;
	int rc;

#ifdef CONFIG_TN3270_CONSOLE
	if (raw3270_registered == 0) {
		spin_lock_irqsave(get_ccwdev_lock(view->dev->cdev), flags);
		rq->callback = NULL;
		rc = __raw3270_start(rp, view, rq);
		if (rc == 0)
			while (!raw3270_request_final(rq)) {
				wait_cons_dev();
				barrier();
			}
		spin_unlock_irqrestore(get_ccwdev_lock(view->dev->cdev), flags);
		return rq->rc;
	}
#endif
	rq->callback = raw3270_wake_init;
	rq->callback_data = &raw3270_wait_queue;
	FUNC5(FUNC2(view->dev->cdev), flags);
	rc = FUNC0(rp, view, rq);
	FUNC6(FUNC2(view->dev->cdev), flags);
	if (rc)
		return rc;
	/* Now wait for the completion. */
	rc = FUNC9(raw3270_wait_queue,
				      FUNC4(rq));
	if (rc == -ERESTARTSYS) {	/* Interrupted by a signal. */
		FUNC3(view->dev, rq);
		/* No wait for the halt to complete. */
		FUNC8(raw3270_wait_queue, FUNC4(rq));
		return -ERESTARTSYS;
	}
	return rq->rc;
}