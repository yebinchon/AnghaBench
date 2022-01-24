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
struct op_msrs {TYPE_1__* counters; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 scalar_t__ MSR_P6_EVNTSEL0 ; 
 scalar_t__ MSR_P6_PERFCTR0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int num_counters ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * reset_value ; 

__attribute__((used)) static void FUNC3(struct op_msrs const * const msrs)
{
	int i;

	for (i = 0; i < num_counters; ++i) {
		if (!msrs->counters[i].addr)
			continue;
		FUNC2(MSR_P6_PERFCTR0 + i);
		FUNC1(MSR_P6_EVNTSEL0 + i);
	}
	if (reset_value) {
		FUNC0(reset_value);
		reset_value = NULL;
	}
}