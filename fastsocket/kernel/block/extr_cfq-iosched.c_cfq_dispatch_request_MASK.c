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
struct request {int dummy; } ;
struct cfq_queue {struct request* next_rq; int /*<<< orphan*/  sort_list; } ;
struct cfq_io_context {TYPE_1__* ioc; } ;
struct cfq_data {struct cfq_io_context* active_cic; int /*<<< orphan*/  queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct cfq_io_context* FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct request* FUNC4 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct request*) ; 
 int /*<<< orphan*/  FUNC6 (struct cfq_data*,struct cfq_queue*) ; 

__attribute__((used)) static bool FUNC7(struct cfq_data *cfqd, struct cfq_queue *cfqq)
{
	struct request *rq;

	FUNC0(FUNC1(&cfqq->sort_list));

	if (!FUNC6(cfqd, cfqq))
		return false;

	/*
	 * follow expired path, else get first next available
	 */
	rq = FUNC4(cfqq);
	if (!rq)
		rq = cfqq->next_rq;

	/*
	 * insert request into driver dispatch list
	 */
	FUNC5(cfqd->queue, rq);

	if (!cfqd->active_cic) {
		struct cfq_io_context *cic = FUNC2(rq);

		FUNC3(&cic->ioc->refcount);
		cfqd->active_cic = cic;
	}

	return true;
}