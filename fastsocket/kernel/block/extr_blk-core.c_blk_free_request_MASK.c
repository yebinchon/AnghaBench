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
struct request {int cmd_flags; } ;

/* Variables and functions */
 int REQ_ELVPRIV ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct request_queue *q, struct request *rq)
{
	if (rq->cmd_flags & REQ_ELVPRIV)
		FUNC0(q, rq);
	FUNC1(rq, q->rq.rq_pool);
}