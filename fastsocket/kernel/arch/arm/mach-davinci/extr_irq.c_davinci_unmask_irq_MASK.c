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
typedef  unsigned int u32 ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  IRQ_ENT_REG0_OFFSET ; 
 int /*<<< orphan*/  IRQ_ENT_REG1_OFFSET ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(unsigned int irq)
{
	unsigned int mask;
	u32 l;

	mask = 1 << FUNC0(irq);

	if (irq > 31) {
		l = FUNC1(IRQ_ENT_REG1_OFFSET);
		l |= mask;
		FUNC2(l, IRQ_ENT_REG1_OFFSET);
	} else {
		l = FUNC1(IRQ_ENT_REG0_OFFSET);
		l |= mask;
		FUNC2(l, IRQ_ENT_REG0_OFFSET);
	}
}