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
struct request_queue {int dummy; } ;
struct request {int dummy; } ;
struct TYPE_4__ {TYPE_1__* aic; } ;
struct TYPE_3__ {int /*<<< orphan*/  nr_dispatched; } ;

/* Variables and functions */
 scalar_t__ AS_RQ_DISPATCHED ; 
 int /*<<< orphan*/  AS_RQ_REMOVED ; 
 TYPE_2__* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct request_queue *q, struct request *rq)
{
	FUNC3(FUNC2(rq) != AS_RQ_DISPATCHED);
	FUNC1(rq, AS_RQ_REMOVED);
	if (FUNC0(rq) && FUNC0(rq)->aic)
		FUNC4(&FUNC0(rq)->aic->nr_dispatched);
}