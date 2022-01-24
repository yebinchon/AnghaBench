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
struct cfq_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfq_data*,struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfq_data*,struct cfq_queue*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct cfq_data *cfqd, struct cfq_queue *cfqq)
{
	/*
	 * Resorting requires the cfqq to be on the RR list already.
	 */
	if (FUNC0(cfqq)) {
		FUNC2(cfqd, cfqq, 0);
		FUNC1(cfqd, cfqq);
	}
}