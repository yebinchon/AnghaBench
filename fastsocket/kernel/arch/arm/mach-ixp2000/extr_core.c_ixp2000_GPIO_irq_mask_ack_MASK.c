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

/* Variables and functions */
 unsigned int IRQ_IXP2000_GPIO0 ; 
 int /*<<< orphan*/  IXP2000_GPIO_EDSR ; 
 int /*<<< orphan*/  IXP2000_GPIO_INCR ; 
 int /*<<< orphan*/  IXP2000_GPIO_INST ; 
 int /*<<< orphan*/  IXP2000_GPIO_LDSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(unsigned int irq)
{
	FUNC1(IXP2000_GPIO_INCR, (1 << (irq - IRQ_IXP2000_GPIO0)));

	FUNC1(IXP2000_GPIO_EDSR, (1 << (irq - IRQ_IXP2000_GPIO0)));
	FUNC1(IXP2000_GPIO_LDSR, (1 << (irq - IRQ_IXP2000_GPIO0)));
	FUNC0(IXP2000_GPIO_INST, (1 << (irq - IRQ_IXP2000_GPIO0)));
}