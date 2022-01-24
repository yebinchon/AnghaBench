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
struct request_queue {int dummy; } ;
struct request {int /*<<< orphan*/  queuelist; } ;
struct cfq_queue {struct request* next_rq; } ;
struct TYPE_2__ {int /*<<< orphan*/  blkg; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct request*) ; 
 struct cfq_queue* FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct request*) ; 
 int /*<<< orphan*/  FUNC7 (struct request*) ; 
 int /*<<< orphan*/  FUNC8 (struct request*) ; 
 int /*<<< orphan*/  FUNC9 (struct request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct request_queue *q, struct request *rq,
		    struct request *next)
{
	struct cfq_queue *cfqq = FUNC1(rq);
	/*
	 * reposition in fifo if next is older than rq
	 */
	if (!FUNC4(&rq->queuelist) && !FUNC4(&next->queuelist) &&
	    FUNC10(FUNC7(next), FUNC7(rq))) {
		FUNC5(&rq->queuelist, &next->queuelist);
		FUNC9(rq, FUNC7(next));
	}

	if (cfqq->next_rq == next)
		cfqq->next_rq = rq;
	FUNC3(next);
	FUNC2(&(FUNC0(rq))->blkg,
					FUNC6(next), FUNC8(next));
}