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
struct request {int /*<<< orphan*/ ** elevator_private; } ;
struct cfq_queue {int /*<<< orphan*/ * allocated; } ;
struct TYPE_2__ {int /*<<< orphan*/  ioc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 struct cfq_queue* FUNC2 (struct request*) ; 
 TYPE_1__* FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct request*) ; 

__attribute__((used)) static void FUNC8(struct request *rq)
{
	struct cfq_queue *cfqq = FUNC2(rq);

	if (cfqq) {
		const int rw = FUNC7(rq);

		FUNC0(!cfqq->allocated[rw]);
		cfqq->allocated[rw]--;

		FUNC6(FUNC3(rq)->ioc);

		rq->elevator_private[0] = NULL;
		rq->elevator_private[1] = NULL;

		/* Put down rq reference on cfqg */
		FUNC4(FUNC1(rq));
		rq->elevator_private[2] = NULL;

		FUNC5(cfqq);
	}
}