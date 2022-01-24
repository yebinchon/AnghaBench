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
struct request_queue {int /*<<< orphan*/  queue_lock; TYPE_1__* elevator; } ;
struct request {struct cfq_queue** elevator_private; } ;
struct cfq_queue {int /*<<< orphan*/  ioc; int /*<<< orphan*/  cfqg; int /*<<< orphan*/  ref; int /*<<< orphan*/ * allocated; scalar_t__ new_cfqq; } ;
struct cfq_io_context {int /*<<< orphan*/  ioc; int /*<<< orphan*/  cfqg; int /*<<< orphan*/  ref; int /*<<< orphan*/ * allocated; scalar_t__ new_cfqq; } ;
struct cfq_data {struct cfq_queue oom_cfqq; } ;
typedef  int gfp_t ;
struct TYPE_2__ {struct cfq_data* elevator_data; } ;

/* Variables and functions */
 int __GFP_WAIT ; 
 scalar_t__ FUNC0 (struct cfq_queue*) ; 
 scalar_t__ FUNC1 (struct cfq_queue*) ; 
 struct cfq_queue* FUNC2 (struct cfq_data*,int) ; 
 struct cfq_queue* FUNC3 (struct cfq_data*,int const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cfq_data*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct cfq_data*,struct cfq_queue*,char*) ; 
 struct cfq_queue* FUNC6 (struct cfq_data*,struct cfq_queue*,struct cfq_queue*) ; 
 struct cfq_queue* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cfq_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct cfq_queue*,struct cfq_queue*,int const) ; 
 struct cfq_queue* FUNC10 (struct cfq_queue*,int const) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct request*) ; 
 int FUNC14 (struct request*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,unsigned long) ; 
 struct cfq_queue* FUNC17 (struct cfq_queue*,struct cfq_queue*) ; 

__attribute__((used)) static int
FUNC18(struct request_queue *q, struct request *rq, gfp_t gfp_mask)
{
	struct cfq_data *cfqd = q->elevator->elevator_data;
	struct cfq_io_context *cic;
	const int rw = FUNC13(rq);
	const bool is_sync = FUNC14(rq);
	struct cfq_queue *cfqq;
	unsigned long flags;

	FUNC11(gfp_mask & __GFP_WAIT);

	cic = FUNC2(cfqd, gfp_mask);

	FUNC15(q->queue_lock, flags);

	if (!cic)
		goto queue_fail;

new_queue:
	cfqq = FUNC10(cic, is_sync);
	if (!cfqq || cfqq == &cfqd->oom_cfqq) {
		cfqq = FUNC3(cfqd, is_sync, cic->ioc, gfp_mask);
		FUNC9(cic, cfqq, is_sync);
	} else {
		/*
		 * If the queue was seeky for too long, break it apart.
		 */
		if (FUNC0(cfqq) && FUNC1(cfqq)) {
			FUNC5(cfqd, cfqq, "breaking apart cfqq");
			cfqq = FUNC17(cic, cfqq);
			if (!cfqq)
				goto new_queue;
		}

		/*
		 * Check to see if this queue is scheduled to merge with
		 * another, closely cooperating queue.  The merging of
		 * queues happens here as it must be done in process context.
		 * The reference on new_cfqq was taken in merge_cfqqs.
		 */
		if (cfqq->new_cfqq)
			cfqq = FUNC6(cfqd, cic, cfqq);
	}

	cfqq->allocated[rw]++;
	cfqq->ref++;

	rq->elevator_private[0] = cic;
	rq->elevator_private[1] = cfqq;
	rq->elevator_private[2] = FUNC7(cfqq->cfqg);

	FUNC16(q->queue_lock, flags);

	return 0;

queue_fail:
	if (cic)
		FUNC12(cic->ioc);

	FUNC8(cfqd);
	FUNC16(q->queue_lock, flags);
	FUNC4(cfqd, "set_request fail");
	return 1;
}