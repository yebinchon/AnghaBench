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
struct request {int /*<<< orphan*/  rb_node; } ;
struct io_context {TYPE_1__* aic; } ;
struct as_data {scalar_t__ current_write_count; int /*<<< orphan*/  nr_dispatched; int /*<<< orphan*/  q; int /*<<< orphan*/ * next_rq; scalar_t__ ioc_finished; int /*<<< orphan*/ * io_context; scalar_t__* last_sector; int /*<<< orphan*/  antic_status; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_dispatched; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANTIC_OFF ; 
 int /*<<< orphan*/  AS_RQ_DISPATCHED ; 
 scalar_t__ AS_RQ_QUEUED ; 
 int const BLK_RW_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct io_context* FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct as_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct as_data*,struct request*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct request*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct request*) ; 
 scalar_t__ FUNC11 (struct request*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,struct io_context**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct request*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct request*) ; 

__attribute__((used)) static void FUNC16(struct as_data *ad, struct request *rq)
{
	const int data_dir = FUNC15(rq);

	FUNC0(FUNC1(&rq->rb_node));

	FUNC6(ad);
	ad->antic_status = ANTIC_OFF;

	/*
	 * This has to be set in order to be correctly updated by
	 * as_find_next_rq
	 */
	ad->last_sector[data_dir] = FUNC10(rq) + FUNC11(rq);

	if (data_dir == BLK_RW_SYNC) {
		struct io_context *ioc = FUNC2(rq);
		/* In case we have to anticipate after this */
		FUNC12(&ad->io_context, &ioc);
	} else {
		if (ad->io_context) {
			FUNC14(ad->io_context);
			ad->io_context = NULL;
		}

		if (ad->current_write_count != 0)
			ad->current_write_count--;
	}
	ad->ioc_finished = 0;

	ad->next_rq[data_dir] = FUNC7(ad, rq);

	/*
	 * take it off the sort and fifo list, add to dispatch queue
	 */
	FUNC8(ad->q, rq);
	FUNC5(FUNC4(rq) != AS_RQ_QUEUED);

	FUNC13(ad->q, rq);

	FUNC3(rq, AS_RQ_DISPATCHED);
	if (FUNC2(rq) && FUNC2(rq)->aic)
		FUNC9(&FUNC2(rq)->aic->nr_dispatched);
	ad->nr_dispatched++;
}