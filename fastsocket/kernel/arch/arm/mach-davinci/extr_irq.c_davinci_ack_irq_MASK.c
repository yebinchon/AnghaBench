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
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  IRQ_REG0_OFFSET ; 
 int /*<<< orphan*/  IRQ_REG1_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(unsigned int irq)
{
	unsigned int mask;

	mask = 1 << FUNC0(irq);

	if (irq > 31)
		FUNC1(mask, IRQ_REG1_OFFSET);
	else
		FUNC1(mask, IRQ_REG0_OFFSET);
}