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
struct TYPE_2__ {int /*<<< orphan*/  rq_pool; } ;
struct request_queue {TYPE_1__ rq; } ;
struct request {unsigned int cmd_flags; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 unsigned int REQ_ALLOCED ; 
 unsigned int REQ_ELVPRIV ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,struct request*,int /*<<< orphan*/ ) ; 
 struct request* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct request *
FUNC5(struct request_queue *q, unsigned int flags, gfp_t gfp_mask)
{
	struct request *rq = FUNC2(q->rq.rq_pool, gfp_mask);

	if (!rq)
		return NULL;

	FUNC0(q, rq);

	rq->cmd_flags = flags | REQ_ALLOCED;

	if ((flags & REQ_ELVPRIV) &&
	    FUNC4(FUNC1(q, rq, gfp_mask))) {
		FUNC3(rq, q->rq.rq_pool);
		return NULL;
	}

	return rq;
}