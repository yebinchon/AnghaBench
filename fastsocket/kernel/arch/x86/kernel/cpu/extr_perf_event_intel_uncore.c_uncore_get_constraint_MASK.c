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
struct hw_perf_event_extra {size_t idx; int alloc; scalar_t__ config; } ;
struct TYPE_2__ {struct hw_perf_event_extra branch_reg; struct hw_perf_event_extra extra_reg; } ;
struct perf_event {TYPE_1__ hw; } ;
struct intel_uncore_extra_reg {scalar_t__ config1; scalar_t__ config2; int /*<<< orphan*/  lock; int /*<<< orphan*/  ref; } ;
struct intel_uncore_box {struct intel_uncore_extra_reg* shared_regs; } ;
struct event_constraint {int dummy; } ;

/* Variables and functions */
 size_t EXTRA_REG_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct event_constraint constraint_empty ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uncore_box*) ; 

__attribute__((used)) static struct event_constraint *
FUNC5(struct intel_uncore_box *box, struct perf_event *event)
{
	struct intel_uncore_extra_reg *er;
	struct hw_perf_event_extra *reg1 = &event->hw.extra_reg;
	struct hw_perf_event_extra *reg2 = &event->hw.branch_reg;
	unsigned long flags;
	bool ok = false;

	/*
	 * reg->alloc can be set due to existing state, so for fake box we
	 * need to ignore this, otherwise we might fail to allocate proper
	 * fake state for this extra reg constraint.
	 */
	if (reg1->idx == EXTRA_REG_NONE ||
	    (!FUNC4(box) && reg1->alloc))
		return NULL;

	er = &box->shared_regs[reg1->idx];
	FUNC2(&er->lock, flags);
	if (!FUNC1(&er->ref) ||
	    (er->config1 == reg1->config && er->config2 == reg2->config)) {
		FUNC0(&er->ref);
		er->config1 = reg1->config;
		er->config2 = reg2->config;
		ok = true;
	}
	FUNC3(&er->lock, flags);

	if (ok) {
		if (!FUNC4(box))
			reg1->alloc = 1;
		return NULL;
	}

	return &constraint_empty;
}