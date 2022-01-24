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
struct intel_uncore_box {TYPE_1__** event_list; } ;
struct hw_perf_event {int idx; } ;
struct event_constraint {unsigned long* idxmsk; int /*<<< orphan*/  weight; } ;
struct TYPE_3__ {struct hw_perf_event hw; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int UNCORE_PMC_IDX_MAX ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct event_constraint**,int,int,int,int*) ; 
 scalar_t__ FUNC6 (int,unsigned long*) ; 
 struct event_constraint* FUNC7 (struct intel_uncore_box*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_uncore_box*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(struct intel_uncore_box *box, int assign[], int n)
{
	unsigned long used_mask[FUNC0(UNCORE_PMC_IDX_MAX)];
	struct event_constraint *c, *constraints[UNCORE_PMC_IDX_MAX];
	int i, wmin, wmax, ret = 0;
	struct hw_perf_event *hwc;

	FUNC2(used_mask, UNCORE_PMC_IDX_MAX);

	for (i = 0, wmin = UNCORE_PMC_IDX_MAX, wmax = 0; i < n; i++) {
		c = FUNC7(box, box->event_list[i]);
		constraints[i] = c;
		wmin = FUNC4(wmin, c->weight);
		wmax = FUNC3(wmax, c->weight);
	}

	/* fastpath, try to reuse previous register */
	for (i = 0; i < n; i++) {
		hwc = &box->event_list[i]->hw;
		c = constraints[i];

		/* never assigned */
		if (hwc->idx == -1)
			break;

		/* constraint still honored */
		if (!FUNC6(hwc->idx, c->idxmsk))
			break;

		/* not already used */
		if (FUNC6(hwc->idx, used_mask))
			break;

		FUNC1(hwc->idx, used_mask);
		if (assign)
			assign[i] = hwc->idx;
	}
	/* slow path */
	if (i != n)
		ret = FUNC5(constraints, n, wmin, wmax, assign);

	if (!assign || ret) {
		for (i = 0; i < n; i++)
			FUNC8(box, box->event_list[i]);
	}
	return ret ? -EINVAL : 0;
}