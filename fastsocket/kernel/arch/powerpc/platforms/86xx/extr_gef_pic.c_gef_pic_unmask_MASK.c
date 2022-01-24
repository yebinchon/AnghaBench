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
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int) ; 
 scalar_t__ gef_pic_irq_reg_base ; 
 int /*<<< orphan*/  gef_pic_lock ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(unsigned int virq)
{
	unsigned long flags;
	unsigned int hwirq;
	u32 mask;

	hwirq = FUNC1(virq);

	FUNC4(&gef_pic_lock, flags);
	mask = FUNC2(gef_pic_irq_reg_base + FUNC0(0));
	mask |= (1 << hwirq);
	FUNC3(gef_pic_irq_reg_base + FUNC0(0), mask);
	FUNC5(&gef_pic_lock, flags);
}