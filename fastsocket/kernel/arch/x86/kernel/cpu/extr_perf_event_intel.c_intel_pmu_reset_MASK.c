#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct debug_store {int /*<<< orphan*/  bts_buffer_base; int /*<<< orphan*/  bts_index; } ;
struct TYPE_4__ {int /*<<< orphan*/  ds; } ;
struct TYPE_3__ {int num_counters; int num_counters_fixed; } ;

/* Variables and functions */
 scalar_t__ MSR_ARCH_PERFMON_FIXED_CTR0 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,unsigned long long) ; 
 TYPE_2__ cpu_hw_events ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 struct debug_store* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__ x86_pmu ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(void)
{
	struct debug_store *ds = FUNC3(cpu_hw_events.ds);
	unsigned long flags;
	int idx;

	if (!x86_pmu.num_counters)
		return;

	FUNC2(flags);

	FUNC4("clearing PMU state on CPU#%d\n", FUNC5());

	for (idx = 0; idx < x86_pmu.num_counters; idx++) {
		FUNC0(FUNC6(idx), 0ull);
		FUNC0(FUNC7(idx),  0ull);
	}
	for (idx = 0; idx < x86_pmu.num_counters_fixed; idx++)
		FUNC0(MSR_ARCH_PERFMON_FIXED_CTR0 + idx, 0ull);

	if (ds)
		ds->bts_index = ds->bts_buffer_base;

	FUNC1(flags);
}