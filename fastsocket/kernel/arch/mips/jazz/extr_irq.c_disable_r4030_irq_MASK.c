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
 int /*<<< orphan*/  JAZZ_IO_IRQ_ENABLE ; 
 unsigned int JAZZ_IRQ_START ; 
 int /*<<< orphan*/  r4030_lock ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(unsigned int irq)
{
	unsigned int mask = ~(1 << (irq - JAZZ_IRQ_START));
	unsigned long flags;

	FUNC2(&r4030_lock, flags);
	mask &= FUNC0(JAZZ_IO_IRQ_ENABLE);
	FUNC1(JAZZ_IO_IRQ_ENABLE, mask);
	FUNC3(&r4030_lock, flags);
}