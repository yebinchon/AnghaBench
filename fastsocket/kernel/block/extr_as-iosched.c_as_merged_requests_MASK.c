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
 int /*<<< orphan*/  AS_RQ_MERGED ; 
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct request*) ; 
 int /*<<< orphan*/  FUNC6 (struct request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct request_queue *q, struct request *req,
			 	struct request *next)
{
	/*
	 * if next expires before rq, assign its expire time to arq
	 * and move into next position (next will be deleted) in fifo
	 */
	if (!FUNC3(&req->queuelist) && !FUNC3(&next->queuelist)) {
		if (FUNC7(FUNC5(next), FUNC5(req))) {
			FUNC4(&req->queuelist, &next->queuelist);
			FUNC6(req, FUNC5(next));
		}
	}

	/*
	 * kill knowledge of next, this one is a goner
	 */
	FUNC2(q, next);
	FUNC1(next);

	FUNC0(next, AS_RQ_MERGED);
}