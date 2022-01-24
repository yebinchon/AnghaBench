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
typedef  scalar_t__ u64 ;
struct p4_event_bind {int /*<<< orphan*/ * escr_msr; } ;
struct hw_perf_event {int idx; scalar_t__ config; } ;
struct cpu_hw_events {TYPE_1__** event_list; } ;
struct TYPE_2__ {struct hw_perf_event hw; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  P4_ESCR_MSR_TABLE_SIZE ; 
 int /*<<< orphan*/  X86_PMC_IDX_MAX ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,int /*<<< orphan*/ ) ; 
 struct p4_event_bind* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int) ; 
 int FUNC6 (unsigned int,unsigned long*,struct p4_event_bind*) ; 
 int /*<<< orphan*/  FUNC7 (struct hw_perf_event*,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int,unsigned long*) ; 
 int FUNC10 () ; 
 scalar_t__ FUNC11 (int,unsigned long*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct cpu_hw_events *cpuc, int n, int *assign)
{
	unsigned long used_mask[FUNC0(X86_PMC_IDX_MAX)];
	unsigned long escr_mask[FUNC0(P4_ESCR_MSR_TABLE_SIZE)];
	int cpu = FUNC10();
	struct hw_perf_event *hwc;
	struct p4_event_bind *bind;
	unsigned int i, thread, num;
	int cntr_idx, escr_idx;
	u64 config_alias;
	int pass;

	FUNC1(used_mask, X86_PMC_IDX_MAX);
	FUNC1(escr_mask, P4_ESCR_MSR_TABLE_SIZE);

	for (i = 0, num = n; i < n; i++, num--) {

		hwc = &cpuc->event_list[i]->hw;
		thread = FUNC5(cpu);
		pass = 0;

again:
		/*
		 * It's possible to hit a circular lock
		 * between original and alternative events
		 * if both are scheduled already.
		 */
		if (pass > 2)
			goto done;

		bind = FUNC2(hwc->config);
		escr_idx = FUNC4(bind->escr_msr[thread]);
		if (FUNC12(escr_idx == -1))
			goto done;

		if (hwc->idx != -1 && !FUNC8(hwc->config, cpu)) {
			cntr_idx = hwc->idx;
			if (assign)
				assign[i] = hwc->idx;
			goto reserve;
		}

		cntr_idx = FUNC6(thread, used_mask, bind);
		if (cntr_idx == -1 || FUNC11(escr_idx, escr_mask)) {
			/*
			 * Check whether an event alias is still available.
			 */
			config_alias = FUNC3(hwc->config);
			if (!config_alias)
				goto done;
			hwc->config = config_alias;
			pass++;
			goto again;
		}

		FUNC7(hwc, cpu);
		if (assign)
			assign[i] = cntr_idx;
reserve:
		FUNC9(cntr_idx, used_mask);
		FUNC9(escr_idx, escr_mask);
	}

done:
	return num ? -ENOSPC : 0;
}