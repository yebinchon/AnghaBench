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
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned long) ; 
 int /*<<< orphan*/  ilsel_level_map ; 
 unsigned long FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 

void FUNC5(unsigned int irq)
{
	unsigned long addr;
	unsigned int tmp;

	addr = FUNC3(irq);

	tmp = FUNC1(addr);
	tmp &= ~(0xf << FUNC4(irq));
	FUNC2(tmp, addr);

	FUNC0(irq, &ilsel_level_map);
}