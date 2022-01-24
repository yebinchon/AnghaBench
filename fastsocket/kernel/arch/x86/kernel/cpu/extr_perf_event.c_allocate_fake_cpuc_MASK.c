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
struct cpu_hw_events {int /*<<< orphan*/  shared_regs; } ;
struct TYPE_2__ {scalar_t__ extra_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct cpu_hw_events* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpu_hw_events*) ; 
 struct cpu_hw_events* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 TYPE_1__ x86_pmu ; 

__attribute__((used)) static struct cpu_hw_events *FUNC5(void)
{
	struct cpu_hw_events *cpuc;
	int cpu = FUNC4();

	cpuc = FUNC3(sizeof(*cpuc), GFP_KERNEL);
	if (!cpuc)
		return FUNC0(-ENOMEM);

	/* only needed, if we have extra_regs */
	if (x86_pmu.extra_regs) {
		cpuc->shared_regs = FUNC1(cpu);
		if (!cpuc->shared_regs)
			goto error;
	}
	return cpuc;
error:
	FUNC2(cpuc);
	return FUNC0(-ENOMEM);
}