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
struct cfq_rb_root {int count; } ;
struct cfq_queue {struct cfq_rb_root* service_tree; } ;
struct cfq_data {scalar_t__ cfq_slice_idle; scalar_t__ hw_tag; int /*<<< orphan*/  queue; } ;
typedef  enum wl_prio_t { ____Placeholder_wl_prio_t } wl_prio_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IDLE_WORKLOAD ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct cfq_queue*) ; 
 scalar_t__ FUNC3 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfq_data*,struct cfq_queue*,char*,int) ; 
 int FUNC5 (struct cfq_queue*) ; 

__attribute__((used)) static bool FUNC6(struct cfq_data *cfqd, struct cfq_queue *cfqq)
{
	enum wl_prio_t prio = FUNC5(cfqq);
	struct cfq_rb_root *service_tree = cfqq->service_tree;

	FUNC0(!service_tree);
	FUNC0(!service_tree->count);

	/* We never do for idle class queues. */
	if (prio == IDLE_WORKLOAD)
		return false;

	/* Don't idle if slice idling is disabled by the user */
	if (cfqd->cfq_slice_idle == 0)
		return false;

	/* We do for queues that were marked with idle window flag. */
	if (FUNC2(cfqq) &&
	   !(FUNC1(cfqd->queue) && cfqd->hw_tag))
		return true;

	/*
	 * Otherwise, we do only if they are the last ones
	 * in their service tree.
	 */
	if (service_tree->count == 1 && FUNC3(cfqq))
		return 1;
	FUNC4(cfqd, cfqq, "Not idling. st->count:%d",
			service_tree->count);
	return 0;
}