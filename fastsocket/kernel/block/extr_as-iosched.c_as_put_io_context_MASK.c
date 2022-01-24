#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request {int dummy; } ;
struct as_io_context {int /*<<< orphan*/  lock; int /*<<< orphan*/  last_end_request; int /*<<< orphan*/  state; } ;
struct TYPE_3__ {struct as_io_context* aic; } ;

/* Variables and functions */
 int /*<<< orphan*/  AS_TASK_IORUNNING ; 
 TYPE_1__* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct request *rq)
{
	struct as_io_context *aic;

	if (FUNC6(!FUNC0(rq)))
		return;

	aic = FUNC0(rq)->aic;

	if (FUNC2(rq) && aic) {
		unsigned long flags;

		FUNC4(&aic->lock, flags);
		FUNC3(AS_TASK_IORUNNING, &aic->state);
		aic->last_end_request = jiffies;
		FUNC5(&aic->lock, flags);
	}

	FUNC1(FUNC0(rq));
}