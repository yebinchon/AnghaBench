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
struct request_queue {TYPE_2__* elevator; } ;
struct request {int dummy; } ;
struct cfq_queue {TYPE_1__* cfqg; int /*<<< orphan*/  nr_sectors; int /*<<< orphan*/  dispatched; int /*<<< orphan*/  next_rq; } ;
struct cfq_data {int /*<<< orphan*/ * rq_in_flight; } ;
struct TYPE_6__ {int /*<<< orphan*/  dispatched; } ;
struct TYPE_5__ {struct cfq_data* elevator_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  blkg; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct request*) ; 
 struct cfq_queue* FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct cfq_data*,struct cfq_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC7 (struct cfq_data*,struct cfq_queue*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct request*) ; 
 int /*<<< orphan*/  FUNC9 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC10 (struct request*) ; 
 int /*<<< orphan*/  FUNC11 (struct request*) ; 

__attribute__((used)) static void FUNC12(struct request_queue *q, struct request *rq)
{
	struct cfq_data *cfqd = q->elevator->elevator_data;
	struct cfq_queue *cfqq = FUNC1(rq);

	FUNC7(cfqd, cfqq, "dispatch_insert");

	cfqq->next_rq = FUNC6(cfqd, cfqq, rq);
	FUNC8(rq);
	cfqq->dispatched++;
	(FUNC0(rq))->dispatched++;
	FUNC9(q, rq);

	cfqd->rq_in_flight[FUNC5(cfqq)]++;
	cfqq->nr_sectors += FUNC3(rq);
	FUNC4(&cfqq->cfqg->blkg, FUNC2(rq),
					FUNC10(rq), FUNC11(rq));
}