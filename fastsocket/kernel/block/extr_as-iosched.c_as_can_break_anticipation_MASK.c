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
struct io_context {int /*<<< orphan*/  lock; struct as_io_context* aic; } ;
struct as_io_context {scalar_t__ ttime_samples; scalar_t__ ttime_mean; int /*<<< orphan*/  state; int /*<<< orphan*/  nr_dispatched; int /*<<< orphan*/  nr_queued; } ;
struct as_data {int exit_prob; int exit_no_coop; scalar_t__ new_ttime_mean; scalar_t__ antic_expire; scalar_t__ ioc_finished; struct io_context* io_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  AS_TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct io_context* FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (struct as_data*) ; 
 scalar_t__ FUNC3 (struct as_data*,struct as_io_context*,struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct as_data*,struct as_io_context*,struct request*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct request*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct as_data *ad, struct request *rq)
{
	struct io_context *ioc;
	struct as_io_context *aic;

	ioc = ad->io_context;
	FUNC0(!ioc);
	FUNC7(&ioc->lock);

	if (rq && ioc == FUNC1(rq)) {
		/* request from same process */
		FUNC8(&ioc->lock);
		return 1;
	}

	if (ad->ioc_finished && FUNC2(ad)) {
		/*
		 * In this situation status should really be FINISHED,
		 * however the timer hasn't had the chance to run yet.
		 */
		FUNC8(&ioc->lock);
		return 1;
	}

	aic = ioc->aic;
	if (!aic) {
		FUNC8(&ioc->lock);
		return 0;
	}

	if (FUNC5(&aic->nr_queued) > 0) {
		/* process has more requests queued */
		FUNC8(&ioc->lock);
		return 1;
	}

	if (FUNC5(&aic->nr_dispatched) > 0) {
		/* process has more requests dispatched */
		FUNC8(&ioc->lock);
		return 1;
	}

	if (rq && FUNC6(rq) && FUNC3(ad, aic, rq)) {
		/*
		 * Found a close request that is not one of ours.
		 *
		 * This makes close requests from another process update
		 * our IO history. Is generally useful when there are
		 * two or more cooperating processes working in the same
		 * area.
		 */
		if (!FUNC9(AS_TASK_RUNNING, &aic->state)) {
			if (aic->ttime_samples == 0)
				ad->exit_prob = (7*ad->exit_prob + 256)/8;

			ad->exit_no_coop = (7*ad->exit_no_coop)/8;
		}

		FUNC4(ad, aic, rq);
		FUNC8(&ioc->lock);
		return 1;
	}

	if (!FUNC9(AS_TASK_RUNNING, &aic->state)) {
		/* process anticipated on has exited */
		if (aic->ttime_samples == 0)
			ad->exit_prob = (7*ad->exit_prob + 256)/8;

		if (ad->exit_no_coop > 128) {
			FUNC8(&ioc->lock);
			return 1;
		}
	}

	if (aic->ttime_samples == 0) {
		if (ad->new_ttime_mean > ad->antic_expire) {
			FUNC8(&ioc->lock);
			return 1;
		}
		if (ad->exit_prob * ad->exit_no_coop > 128*256) {
			FUNC8(&ioc->lock);
			return 1;
		}
	} else if (aic->ttime_mean > ad->antic_expire) {
		/* the process thinks too much between requests */
		FUNC8(&ioc->lock);
		return 1;
	}
	FUNC8(&ioc->lock);
	return 0;
}