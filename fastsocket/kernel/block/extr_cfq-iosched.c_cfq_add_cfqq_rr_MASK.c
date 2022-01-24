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
 int /*<<< orphan*/  FUNC1 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfq_data*,struct cfq_queue*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfq_data*,struct cfq_queue*) ; 

__attribute__((used)) static void FUNC5(struct cfq_data *cfqd, struct cfq_queue *cfqq)
{
	FUNC2(cfqd, cfqq, "add_to_rr");
	FUNC0(FUNC1(cfqq));
	FUNC3(cfqq);
	cfqd->busy_queues++;

	FUNC4(cfqd, cfqq);
}