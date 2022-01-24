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
 unsigned int NO_IRQ ; 
 unsigned int XICS_IRQ_SPURIOUS ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC1 (int) ; 
 unsigned int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  xics_host ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 unsigned int FUNC5 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC6(void)
{
	unsigned int xirr = FUNC2();
	unsigned int vec = FUNC5(xirr);
	unsigned int irq;

	if (vec == XICS_IRQ_SPURIOUS)
		return NO_IRQ;

	irq = FUNC0(xics_host, vec);
	if (FUNC1(irq != NO_IRQ))
		return irq;

	/* We don't have a linux mapping, so have RTAS mask it. */
	FUNC4(vec);

	/* We might learn about it later, so EOI it */
	FUNC3(xirr);
	return NO_IRQ;
}