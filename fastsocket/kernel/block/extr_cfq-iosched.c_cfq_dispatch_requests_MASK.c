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
struct request_queue {TYPE_1__* elevator; } ;
struct cfq_queue {scalar_t__ slice_dispatch; scalar_t__ slice_end; } ;
struct cfq_data {int busy_queues; } ;
struct TYPE_2__ {struct cfq_data* elevator_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfq_queue*) ; 
 scalar_t__ FUNC1 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfq_data*,struct cfq_queue*) ; 
 int FUNC4 (struct cfq_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct cfq_data*,struct cfq_queue*,char*) ; 
 scalar_t__ FUNC6 (struct cfq_data*,struct cfq_queue*) ; 
 struct cfq_queue* FUNC7 (struct cfq_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct cfq_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct request_queue *q, int force)
{
	struct cfq_data *cfqd = q->elevator->elevator_data;
	struct cfq_queue *cfqq;

	if (!cfqd->busy_queues)
		return 0;

	if (FUNC9(force))
		return FUNC4(cfqd);

	cfqq = FUNC7(cfqd);
	if (!cfqq)
		return 0;

	/*
	 * Dispatch a request from this cfqq, if it is allowed
	 */
	if (!FUNC3(cfqd, cfqq))
		return 0;

	cfqq->slice_dispatch++;
	FUNC2(cfqq);

	/*
	 * expire an async queue immediately if it has used up its slice. idle
	 * queue always expire after 1 dispatch round.
	 */
	if (cfqd->busy_queues > 1 && ((!FUNC0(cfqq) &&
	    cfqq->slice_dispatch >= FUNC6(cfqd, cfqq)) ||
	    FUNC1(cfqq))) {
		cfqq->slice_end = jiffies + 1;
		FUNC8(cfqd, 0);
	}

	FUNC5(cfqd, cfqq, "dispatched a request");
	return 1;
}