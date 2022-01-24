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
struct request {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  next; } ;
struct cfq_queue {int /*<<< orphan*/  cfqd; TYPE_1__ fifo; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct cfq_queue*,char*,struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfq_queue*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 struct request* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct request*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct request *FUNC7(struct cfq_queue *cfqq)
{
	struct request *rq = NULL;

	if (FUNC0(cfqq))
		return NULL;

	FUNC2(cfqq);

	if (FUNC3(&cfqq->fifo))
		return NULL;

	rq = FUNC4(cfqq->fifo.next);
	if (FUNC6(jiffies, FUNC5(rq)))
		rq = NULL;

	FUNC1(cfqq->cfqd, cfqq, "fifo=%p", rq);
	return rq;
}