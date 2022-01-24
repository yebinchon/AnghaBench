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
typedef  int /*<<< orphan*/  hubreg_t ;
typedef  size_t cpuid_t ;
struct TYPE_2__ {struct slice_data* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int PI_INT_MASK1_A ; 
 int PI_INT_MASK1_B ; 
 int PI_INT_PEND1 ; 
 TYPE_1__* cpu_data ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 () ; 

__attribute__((used)) static void FUNC6(void)
{
	int irq, swlevel;
	hubreg_t pend1, mask1;
	cpuid_t cpu = FUNC5();
	int pi_int_mask1 = (FUNC2(cpu) == 0) ?  PI_INT_MASK1_A : PI_INT_MASK1_B;
	struct slice_data *si = cpu_data[cpu].data;

	/* copied from Irix intpend0() */
	pend1 = FUNC1(PI_INT_PEND1);
	mask1 = FUNC1(pi_int_mask1);

	pend1 &= mask1;		/* Pick intrs we should look at */
	if (!pend1)
		return;

	swlevel = FUNC4(pend1);
	/* "map" swlevel to irq */
	irq = si->level_to_irq[swlevel];
	FUNC0(swlevel);
	FUNC3(irq);

	FUNC1(PI_INT_PEND1);
}