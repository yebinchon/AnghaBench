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
typedef  int /*<<< orphan*/  u64 ;
struct op_msrs {TYPE_1__* controls; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCH_PERFMON_EVENTSEL_ENABLE ; 
 int num_counters ; 
 int /*<<< orphan*/  FUNC0 () ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * reset_value ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct op_msrs const * const msrs)
{
	u64 val;
	int i;

	/*
	 * Subtle: stop on all counters to avoid race with setting our
	 * pm callback
	 */
	for (i = 0; i < num_counters; ++i) {
		if (!reset_value[FUNC1(i)])
			continue;
		FUNC2(msrs->controls[i].addr, val);
		val &= ~ARCH_PERFMON_EVENTSEL_ENABLE;
		FUNC3(msrs->controls[i].addr, val);
	}

	FUNC0();
}