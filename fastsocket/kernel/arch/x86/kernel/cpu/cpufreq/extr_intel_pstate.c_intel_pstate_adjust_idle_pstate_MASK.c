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
struct TYPE_2__ {scalar_t__ current_pstate; scalar_t__ min_pstate; } ;
struct _pid {int dummy; } ;
struct cpudata {TYPE_1__ pstate; struct _pid idle_pid; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct cpudata*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpudata*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpudata*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cpudata*,int) ; 
 int FUNC5 (struct _pid*,int) ; 

__attribute__((used)) static inline void FUNC6(struct cpudata *cpu)
{
	int busy_scaled;
	struct _pid *pid;
	int ctl = 0;
	int steps;

	pid = &cpu->idle_pid;

	busy_scaled = FUNC1(cpu);

	ctl = FUNC5(pid, 100 - busy_scaled);

	steps = FUNC0(ctl);
	if (ctl < 0)
		FUNC3(cpu, steps);
	else
		FUNC4(cpu, steps);

	if (cpu->pstate.current_pstate == cpu->pstate.min_pstate)
		FUNC2(cpu);
}