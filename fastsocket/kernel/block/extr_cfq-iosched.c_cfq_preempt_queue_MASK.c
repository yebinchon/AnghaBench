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
struct cfq_queue {scalar_t__ slice_end; } ;
struct cfq_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfq_data*,struct cfq_queue*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfq_data*,struct cfq_queue*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cfq_data*,int) ; 

__attribute__((used)) static void FUNC6(struct cfq_data *cfqd, struct cfq_queue *cfqq)
{
	FUNC2(cfqd, cfqq, "preempt");
	FUNC5(cfqd, 1);

	/*
	 * Put the new queue at the front of the of the current list,
	 * so we know that it will be selected next.
	 */
	FUNC0(!FUNC1(cfqq));

	FUNC4(cfqd, cfqq, 1);

	cfqq->slice_end = 0;
	FUNC3(cfqq);
}