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
struct TYPE_2__ {int hwirq; } ;

/* Variables and functions */
 scalar_t__ MV64X60_IC_CPU0_INTR_MASK_LO ; 
 int MV64x60_LEVEL2_MASK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* irq_map ; 
 int mv64x60_cached_low_mask ; 
 scalar_t__ mv64x60_irq_reg_base ; 
 int /*<<< orphan*/  mv64x60_lock ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned int virq)
{
	int level2 = irq_map[virq].hwirq & MV64x60_LEVEL2_MASK;
	unsigned long flags;

	FUNC2(&mv64x60_lock, flags);
	mv64x60_cached_low_mask |= 1 << level2;
	FUNC1(mv64x60_irq_reg_base + MV64X60_IC_CPU0_INTR_MASK_LO,
		 mv64x60_cached_low_mask);
	FUNC3(&mv64x60_lock, flags);
	(void)FUNC0(mv64x60_irq_reg_base + MV64X60_IC_CPU0_INTR_MASK_LO);
}