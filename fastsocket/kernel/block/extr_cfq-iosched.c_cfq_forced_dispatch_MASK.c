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
struct cfq_queue {int dummy; } ;
struct cfq_data {int /*<<< orphan*/  busy_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfq_data*,struct cfq_queue*) ; 
 struct cfq_queue* FUNC3 (struct cfq_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfq_data*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cfq_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct cfq_data *cfqd)
{
	struct cfq_queue *cfqq;
	int dispatched = 0;

	/* Expire the timeslice of the current active queue first */
	FUNC5(cfqd, 0);
	while ((cfqq = FUNC3(cfqd)) != NULL) {
		FUNC2(cfqd, cfqq);
		dispatched += FUNC1(cfqq);
	}

	FUNC0(cfqd->busy_queues);

	FUNC4(cfqd, "forced_dispatch=%d", dispatched);
	return dispatched;
}