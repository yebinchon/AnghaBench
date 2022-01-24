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
struct request_queue {struct request* last_merge; int /*<<< orphan*/  nr_sorted; struct elevator_queue* elevator; } ;
struct request {int dummy; } ;
struct elevator_queue {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* elevator_merge_req_fn ) (struct request_queue*,struct request*,struct request*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,struct request*,struct request*) ; 

void FUNC3(struct request_queue *q, struct request *rq,
			     struct request *next)
{
	struct elevator_queue *e = q->elevator;

	if (e->ops->elevator_merge_req_fn)
		e->ops->elevator_merge_req_fn(q, rq, next);

	FUNC1(q, rq);
	FUNC0(q, next);

	q->nr_sorted--;
	q->last_merge = rq;
}