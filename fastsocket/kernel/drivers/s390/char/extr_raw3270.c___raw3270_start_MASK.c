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
struct raw3270_view {int dummy; } ;
struct raw3270_request {int rc; int /*<<< orphan*/  list; int /*<<< orphan*/  ccw; struct raw3270_view* view; } ;
struct raw3270 {int /*<<< orphan*/  req_queue; int /*<<< orphan*/  cdev; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  RAW3270_FLAGS_BUSY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct raw3270_view*) ; 
 int /*<<< orphan*/  FUNC4 (struct raw3270_view*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct raw3270 *rp, struct raw3270_view *view,
		struct raw3270_request *rq)
{
	rq->view = view;
	FUNC3(view);
	if (FUNC2(&rp->req_queue) &&
	    !FUNC5(RAW3270_FLAGS_BUSY, &rp->flags)) {
		/* No other requests are on the queue. Start this one. */
		rq->rc = FUNC0(rp->cdev, &rq->ccw,
					       (unsigned long) rq, 0, 0);
		if (rq->rc) {
			FUNC4(view);
			return rq->rc;
		}
	}
	FUNC1(&rq->list, &rp->req_queue);
	return 0;
}