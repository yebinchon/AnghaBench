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
struct TYPE_2__ {scalar_t__ current_pstate; scalar_t__ min_pstate; int /*<<< orphan*/  max_pstate; } ;
struct cpudata {int min_pstate_count; TYPE_1__ pstate; int /*<<< orphan*/  idle_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpudata*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpudata*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpudata*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpudata*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpudata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cpudata*) ; 

__attribute__((used)) static void FUNC6(unsigned long __data)
{
	struct cpudata *cpu = (struct cpudata *) __data;

	FUNC3(cpu);

	if (!cpu->idle_mode)
		FUNC0(cpu);
	else
		FUNC1(cpu);

#if defined(XPERF_FIX)
	if (cpu->pstate.current_pstate == cpu->pstate.min_pstate) {
		cpu->min_pstate_count++;
		if (!(cpu->min_pstate_count % 5)) {
			intel_pstate_set_pstate(cpu, cpu->pstate.max_pstate);
			intel_pstate_idle_mode(cpu);
		}
	} else
		cpu->min_pstate_count = 0;
#endif
	FUNC5(cpu);
}