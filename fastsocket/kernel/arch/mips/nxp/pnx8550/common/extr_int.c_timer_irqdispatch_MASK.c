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
 int /*<<< orphan*/  PNX8550_INT_TIMER1 ; 
 int /*<<< orphan*/  PNX8550_INT_TIMER2 ; 
 int /*<<< orphan*/  PNX8550_INT_TIMER3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(int irq)
{
	irq = (0x01c0 & FUNC2()) >> 6;

	if (FUNC3(irq == 0)) {
		FUNC1("timer_irqdispatch: irq 0, spurious interrupt?\n");
		return;
	}

	if (irq & 0x1)
		FUNC0(PNX8550_INT_TIMER1);
	if (irq & 0x2)
		FUNC0(PNX8550_INT_TIMER2);
	if (irq & 0x4)
		FUNC0(PNX8550_INT_TIMER3);
}