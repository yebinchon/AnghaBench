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
struct request_queue {int /*<<< orphan*/  queue_head; struct request* boundary_rq; int /*<<< orphan*/  end_sector; int /*<<< orphan*/  nr_sorted; struct request* last_merge; } ;
struct request {int /*<<< orphan*/  queuelist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 

void FUNC3(struct request_queue *q, struct request *rq)
{
	if (q->last_merge == rq)
		q->last_merge = NULL;

	FUNC0(q, rq);

	q->nr_sorted--;

	q->end_sector = FUNC2(rq);
	q->boundary_rq = rq;
	FUNC1(&rq->queuelist, &q->queue_head);
}