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
struct request {int dummy; } ;
struct cfq_queue {struct request* next_rq; int /*<<< orphan*/  sort_list; int /*<<< orphan*/ * queued; struct cfq_data* cfqd; } ;
struct cfq_data {int /*<<< orphan*/  last_position; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct cfq_queue* FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfq_data*,struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfq_queue*) ; 
 struct request* FUNC4 (struct cfq_data*,struct request*,struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cfq_data*,struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct request*) ; 
 size_t FUNC7 (struct request*) ; 

__attribute__((used)) static void FUNC8(struct request *rq)
{
	struct cfq_queue *cfqq = FUNC1(rq);
	struct cfq_data *cfqd = cfqq->cfqd;
	struct request *prev;

	cfqq->queued[FUNC7(rq)]++;

	FUNC6(&cfqq->sort_list, rq);

	if (!FUNC3(cfqq))
		FUNC2(cfqd, cfqq);

	/*
	 * check if this request is a better next-serve candidate
	 */
	prev = cfqq->next_rq;
	cfqq->next_rq = FUNC4(cfqd, cfqq->next_rq, rq, cfqd->last_position);

	/*
	 * adjust priority tree position, if ->next_rq changes
	 */
	if (prev != cfqq->next_rq)
		FUNC5(cfqd, cfqq);

	FUNC0(!cfqq->next_rq);
}