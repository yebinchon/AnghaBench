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
struct TYPE_2__ {int /*<<< orphan*/  gs_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_GS_BASE ; 
 int /*<<< orphan*/  __KERNEL_PERCPU ; 
 int /*<<< orphan*/  fs ; 
 int /*<<< orphan*/  gs ; 
 TYPE_1__ irq_stack_union ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC4(int cpu)
{
#ifdef CONFIG_X86_32
	loadsegment(fs, __KERNEL_PERCPU);
#else
	FUNC1(gs, 0);
	FUNC3(MSR_GS_BASE, (unsigned long)FUNC2(irq_stack_union.gs_base, cpu));
#endif
	FUNC0();
}