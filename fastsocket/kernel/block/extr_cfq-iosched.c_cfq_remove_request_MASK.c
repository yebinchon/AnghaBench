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
struct request {int cmd_flags; int /*<<< orphan*/  queuelist; } ;
struct cfq_queue {int /*<<< orphan*/  meta_pending; TYPE_1__* cfqd; struct request* next_rq; } ;
struct TYPE_4__ {int /*<<< orphan*/  blkg; } ;
struct TYPE_3__ {int /*<<< orphan*/  rq_queued; } ;

/* Variables and functions */
 int REQ_META ; 
 TYPE_2__* FUNC0 (struct request*) ; 
 struct cfq_queue* FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 struct request* FUNC5 (TYPE_1__*,struct cfq_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct request*) ; 
 int /*<<< orphan*/  FUNC8 (struct request*) ; 

__attribute__((used)) static void FUNC9(struct request *rq)
{
	struct cfq_queue *cfqq = FUNC1(rq);

	if (cfqq->next_rq == rq)
		cfqq->next_rq = FUNC5(cfqq->cfqd, cfqq, rq);

	FUNC6(&rq->queuelist);
	FUNC4(rq);

	cfqq->cfqd->rq_queued--;
	FUNC3(&(FUNC0(rq))->blkg,
					FUNC7(rq), FUNC8(rq));
	if (rq->cmd_flags & REQ_META) {
		FUNC2(!cfqq->meta_pending);
		cfqq->meta_pending--;
	}
}