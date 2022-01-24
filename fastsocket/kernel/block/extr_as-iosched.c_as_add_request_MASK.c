#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int /*<<< orphan*/  node; TYPE_1__* elevator; } ;
struct request {int /*<<< orphan*/  queuelist; int /*<<< orphan*/ * elevator_private; } ;
struct as_data {int /*<<< orphan*/ * fifo_list; scalar_t__* fifo_expire; } ;
struct TYPE_6__ {TYPE_2__* aic; } ;
struct TYPE_5__ {int /*<<< orphan*/  nr_queued; } ;
struct TYPE_4__ {struct as_data* elevator_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AS_RQ_NEW ; 
 int /*<<< orphan*/  AS_RQ_QUEUED ; 
 TYPE_3__* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct as_data*,struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct as_data*,TYPE_2__*,struct request*) ; 
 int /*<<< orphan*/  FUNC5 (struct as_data*,struct request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct request*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct request*) ; 
 int /*<<< orphan*/  FUNC10 (struct request*,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct request_queue *q, struct request *rq)
{
	struct as_data *ad = q->elevator->elevator_data;
	int data_dir;

	FUNC2(rq, AS_RQ_NEW);

	data_dir = FUNC9(rq);

	rq->elevator_private[0] = FUNC3(q->node);

	if (FUNC0(rq)) {
		FUNC4(ad, FUNC0(rq)->aic, rq);
		FUNC6(&FUNC0(rq)->aic->nr_queued);
	}

	FUNC7(FUNC1(ad, rq), rq);

	/*
	 * set expire time and add to fifo list
	 */
	FUNC10(rq, jiffies + ad->fifo_expire[data_dir]);
	FUNC8(&rq->queuelist, &ad->fifo_list[data_dir]);

	FUNC5(ad, rq); /* keep state machine up to date */
	FUNC2(rq, AS_RQ_QUEUED);
}