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
struct request_queue {struct request* last_merge; struct elevator_queue* elevator; } ;
struct request {int dummy; } ;
struct elevator_queue {TYPE_1__* ops; } ;
struct bio {int /*<<< orphan*/  bi_sector; } ;
struct TYPE_2__ {int (* elevator_merge_fn ) (struct request_queue*,struct request**,struct bio*) ;} ;

/* Variables and functions */
 int ELEVATOR_BACK_MERGE ; 
 int ELEVATOR_NO_MERGE ; 
 scalar_t__ FUNC0 (struct request_queue*) ; 
 int FUNC1 (struct request*,struct bio*) ; 
 scalar_t__ FUNC2 (struct request*,struct bio*) ; 
 struct request* FUNC3 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct request_queue*,struct request**,struct bio*) ; 

int FUNC5(struct request_queue *q, struct request **req, struct bio *bio)
{
	struct elevator_queue *e = q->elevator;
	struct request *__rq;
	int ret;

	/*
	 * First try one-hit cache.
	 */
	if (q->last_merge && FUNC2(q->last_merge, bio)) {
		ret = FUNC1(q->last_merge, bio);
		if (ret != ELEVATOR_NO_MERGE) {
			*req = q->last_merge;
			return ret;
		}
	}

	if (FUNC0(q))
		return ELEVATOR_NO_MERGE;

	/*
	 * See if our hash lookup can find a potential backmerge.
	 */
	__rq = FUNC3(q, bio->bi_sector);
	if (__rq && FUNC2(__rq, bio)) {
		*req = __rq;
		return ELEVATOR_BACK_MERGE;
	}

	if (e->ops->elevator_merge_fn)
		return e->ops->elevator_merge_fn(q, req, bio);

	return ELEVATOR_NO_MERGE;
}