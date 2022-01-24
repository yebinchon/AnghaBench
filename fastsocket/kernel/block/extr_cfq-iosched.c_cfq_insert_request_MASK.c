#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct request_queue {TYPE_2__* elevator; } ;
struct request {int /*<<< orphan*/  queuelist; } ;
struct cfq_queue {int /*<<< orphan*/  fifo; } ;
struct cfq_data {TYPE_1__* serving_group; scalar_t__* cfq_fifo_expire; } ;
struct TYPE_8__ {int /*<<< orphan*/  blkg; } ;
struct TYPE_7__ {int /*<<< orphan*/  ioc; } ;
struct TYPE_6__ {struct cfq_data* elevator_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  blkg; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct request*) ; 
 struct cfq_queue* FUNC1 (struct request*) ; 
 TYPE_3__* FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct cfq_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cfq_data*,struct cfq_queue*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct cfq_data*,struct cfq_queue*,struct request*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct request*) ; 
 size_t FUNC10 (struct request*) ; 
 int /*<<< orphan*/  FUNC11 (struct request*,scalar_t__) ; 

__attribute__((used)) static void FUNC12(struct request_queue *q, struct request *rq)
{
	struct cfq_data *cfqd = q->elevator->elevator_data;
	struct cfq_queue *cfqq = FUNC1(rq);

	FUNC6(cfqd, cfqq, "insert_request");
	FUNC5(cfqq, FUNC2(rq)->ioc);

	FUNC11(rq, jiffies + cfqd->cfq_fifo_expire[FUNC10(rq)]);
	FUNC8(&rq->queuelist, &cfqq->fifo);
	FUNC3(rq);
	FUNC4(&(FUNC0(rq))->blkg,
			&cfqd->serving_group->blkg, FUNC9(rq),
			FUNC10(rq));
	FUNC7(cfqd, cfqq, rq);
}