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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  concurrent_irq ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 
 struct pt_regs* FUNC6 (struct pt_regs*) ; 

void FUNC7(struct pt_regs *regs)
{
	unsigned int irq;
	struct pt_regs *old_regs = FUNC6(regs);

	FUNC3();
	irq = FUNC2(regs);
next_irq:
	FUNC0(irq == -1U);
	FUNC1(irq);

	irq = FUNC2(regs);
	if (irq != -1U) {
		FUNC5("next irq: %d\n", irq);
		++concurrent_irq;
		goto next_irq;
	}

	FUNC4();
	FUNC6(old_regs);
}