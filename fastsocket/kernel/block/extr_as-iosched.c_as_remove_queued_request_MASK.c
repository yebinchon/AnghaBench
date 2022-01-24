#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request_queue {TYPE_2__* elevator; } ;
struct request {int dummy; } ;
struct io_context {TYPE_1__* aic; } ;
struct as_data {struct request** next_rq; } ;
struct TYPE_4__ {struct as_data* elevator_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  nr_queued; } ;

/* Variables and functions */
 scalar_t__ AS_RQ_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct io_context* FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct as_data*,struct request*) ; 
 struct request* FUNC5 (struct as_data*,struct request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct request*) ; 
 int FUNC9 (struct request*) ; 

__attribute__((used)) static void FUNC10(struct request_queue *q,
				     struct request *rq)
{
	const int data_dir = FUNC9(rq);
	struct as_data *ad = q->elevator->elevator_data;
	struct io_context *ioc;

	FUNC3(FUNC2(rq) != AS_RQ_QUEUED);

	ioc = FUNC1(rq);
	if (ioc && ioc->aic) {
		FUNC0(!FUNC7(&ioc->aic->nr_queued));
		FUNC6(&ioc->aic->nr_queued);
	}

	/*
	 * Update the "next_rq" cache if we are about to remove its
	 * entry
	 */
	if (ad->next_rq[data_dir] == rq)
		ad->next_rq[data_dir] = FUNC5(ad, rq);

	FUNC8(rq);
	FUNC4(ad, rq);
}