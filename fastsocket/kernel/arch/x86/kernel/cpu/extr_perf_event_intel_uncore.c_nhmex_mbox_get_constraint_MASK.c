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
typedef  int u64 ;
struct hw_perf_event_extra {int config; int idx; int alloc; } ;
struct TYPE_2__ {struct hw_perf_event_extra branch_reg; struct hw_perf_event_extra extra_reg; } ;
struct perf_event {TYPE_1__ hw; } ;
struct intel_uncore_box {int dummy; } ;
struct event_constraint {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EXTRA_REG_NHMEX_M_ZDP_CTL_FVC ; 
 int FUNC1 (int,int,int) ; 
 struct event_constraint constraint_empty ; 
 int FUNC2 (struct perf_event*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_uncore_box*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_uncore_box*,int) ; 
 scalar_t__ FUNC5 (struct intel_uncore_box*) ; 

__attribute__((used)) static struct event_constraint *
FUNC6(struct intel_uncore_box *box, struct perf_event *event)
{
	struct hw_perf_event_extra *reg1 = &event->hw.extra_reg;
	struct hw_perf_event_extra *reg2 = &event->hw.branch_reg;
	int i, idx[2], alloc = 0;
	u64 config1 = reg1->config;

	idx[0] = FUNC1(reg1->idx, 0, 8);
	idx[1] = FUNC1(reg1->idx, 1, 8);
again:
	for (i = 0; i < 2; i++) {
		if (!FUNC5(box) && (reg1->alloc & (0x1 << i)))
			idx[i] = 0xff;

		if (idx[i] == 0xff)
			continue;

		if (!FUNC3(box, idx[i],
				FUNC1(config1, i, 32)))
			goto fail;
		alloc |= (0x1 << i);
	}

	/* for the match/mask registers */
	if ((FUNC5(box) || !reg2->alloc) &&
	    !FUNC3(box, reg2->idx, reg2->config))
		goto fail;

	/*
	 * If it's a fake box -- as per validate_{group,event}() we
	 * shouldn't touch event state and we can avoid doing so
	 * since both will only call get_event_constraints() once
	 * on each event, this avoids the need for reg->alloc.
	 */
	if (!FUNC5(box)) {
		if (idx[0] != 0xff && idx[0] != FUNC1(reg1->idx, 0, 8))
			FUNC2(event, idx[0], true);
		reg1->alloc |= alloc;
		reg2->alloc = 1;
	}
	return NULL;
fail:
	if (idx[0] != 0xff && !(alloc & 0x1) &&
	    idx[0] >= EXTRA_REG_NHMEX_M_ZDP_CTL_FVC) {
		/*
		 * events 0xd ~ 0x10 are functional identical, but are
		 * controlled by different fields in the ZDP_CTL_FVC
		 * register. If we failed to take one field, try the
		 * rest 3 choices.
		 */
		FUNC0(FUNC1(reg1->idx, 1, 8) != 0xff);
		idx[0] -= EXTRA_REG_NHMEX_M_ZDP_CTL_FVC;
		idx[0] = (idx[0] + 1) % 4;
		idx[0] += EXTRA_REG_NHMEX_M_ZDP_CTL_FVC;
		if (idx[0] != FUNC1(reg1->idx, 0, 8)) {
			config1 = FUNC2(event, idx[0], false);
			goto again;
		}
	}

	if (alloc & 0x1)
		FUNC4(box, idx[0]);
	if (alloc & 0x2)
		FUNC4(box, idx[1]);
	return &constraint_empty;
}