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
struct request_queue {int dummy; } ;
struct request {int /*<<< orphan*/  queuelist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct request_queue *q, struct request *req,
			 struct request *next)
{
	/*
	 * if next expires before rq, assign its expire time to rq
	 * and move into next position (next will be deleted) in fifo
	 */
	if (!FUNC1(&req->queuelist) && !FUNC1(&next->queuelist)) {
		if (FUNC5(FUNC3(next), FUNC3(req))) {
			FUNC2(&req->queuelist, &next->queuelist);
			FUNC4(req, FUNC3(next));
		}
	}

	/*
	 * kill knowledge of next, this one is a goner
	 */
	FUNC0(q, next);
}