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
 int PNX8550_GIC_VECTOR_0 ; 
 scalar_t__ PNX8550_INT_GIC_MIN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(int irq)
{
	/* find out which interrupt */
	irq = PNX8550_GIC_VECTOR_0 >> 3;

	if (irq == 0) {
		FUNC1("hw0_irqdispatch: irq 0, spurious interrupt?\n");
		return;
	}
	FUNC0(PNX8550_INT_GIC_MIN + irq);
}