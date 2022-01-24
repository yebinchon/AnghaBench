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
 int /*<<< orphan*/  EMMA2RH_GPIO_INT_MASK ; 
 scalar_t__ EMMA2RH_GPIO_IRQ_BASE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(unsigned int irq)
{
	u32 reg;

	irq -= EMMA2RH_GPIO_IRQ_BASE;

	reg = FUNC0(EMMA2RH_GPIO_INT_MASK);
	reg |= 1 << irq;
	FUNC1(EMMA2RH_GPIO_INT_MASK, reg);
}