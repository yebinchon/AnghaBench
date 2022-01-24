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
struct slice_data {int* level_to_irq; } ;
typedef  unsigned long hubreg_t ;
typedef  size_t cpuid_t ;
struct TYPE_2__ {struct slice_data* data; } ;

/* Variables and functions */
 unsigned long CPU_CALL_A_IRQ ; 
 unsigned long CPU_CALL_B_IRQ ; 
 unsigned long CPU_RESCHED_A_IRQ ; 
 unsigned long CPU_RESCHED_B_IRQ ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int) ; 
 int PI_INT_MASK0_A ; 
 int PI_INT_MASK0_B ; 
 int PI_INT_PEND0 ; 
 TYPE_1__* cpu_data ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 size_t FUNC6 () ; 

__attribute__((used)) static void FUNC7(void)
{
	int irq, swlevel;
	hubreg_t pend0, mask0;
	cpuid_t cpu = FUNC6();
	int pi_int_mask0 =
		(FUNC2(cpu) == 0) ?  PI_INT_MASK0_A : PI_INT_MASK0_B;

	/* copied from Irix intpend0() */
	pend0 = FUNC1(PI_INT_PEND0);
	mask0 = FUNC1(pi_int_mask0);

	pend0 &= mask0;		/* Pick intrs we should look at */
	if (!pend0)
		return;

	swlevel = FUNC4(pend0);
#ifdef CONFIG_SMP
	if (pend0 & (1UL << CPU_RESCHED_A_IRQ)) {
		LOCAL_HUB_CLR_INTR(CPU_RESCHED_A_IRQ);
	} else if (pend0 & (1UL << CPU_RESCHED_B_IRQ)) {
		LOCAL_HUB_CLR_INTR(CPU_RESCHED_B_IRQ);
	} else if (pend0 & (1UL << CPU_CALL_A_IRQ)) {
		LOCAL_HUB_CLR_INTR(CPU_CALL_A_IRQ);
		smp_call_function_interrupt();
	} else if (pend0 & (1UL << CPU_CALL_B_IRQ)) {
		LOCAL_HUB_CLR_INTR(CPU_CALL_B_IRQ);
		smp_call_function_interrupt();
	} else
#endif
	{
		/* "map" swlevel to irq */
		struct slice_data *si = cpu_data[cpu].data;

		irq = si->level_to_irq[swlevel];
		FUNC3(irq);
	}

	FUNC1(PI_INT_PEND0);
}