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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ IRQ_EXT_BASE ; 
 int /*<<< orphan*/  PERF_EXTIRQ_CFG_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(unsigned int irq)
{
	u32 reg;

	irq -= IRQ_EXT_BASE;
	reg = FUNC1(PERF_EXTIRQ_CFG_REG);
	reg |= FUNC0(irq);
	FUNC2(reg, PERF_EXTIRQ_CFG_REG);
}