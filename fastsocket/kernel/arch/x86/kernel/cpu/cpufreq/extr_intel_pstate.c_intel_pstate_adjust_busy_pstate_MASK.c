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
struct _pid {int dummy; } ;
struct cpudata {struct _pid pid; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct cpudata*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpudata*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cpudata*,int) ; 
 int FUNC4 (struct _pid*,int) ; 

__attribute__((used)) static inline void FUNC5(struct cpudata *cpu)
{
	int busy_scaled;
	struct _pid *pid;
	signed int ctl = 0;
	int steps;

	pid = &cpu->pid;
	busy_scaled = FUNC1(cpu);

	ctl = FUNC4(pid, busy_scaled);

	steps = FUNC0(ctl);
	if (ctl < 0)
		FUNC3(cpu, steps);
	else
		FUNC2(cpu, steps);
}