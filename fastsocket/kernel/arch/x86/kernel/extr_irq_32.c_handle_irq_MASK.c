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
struct irq_desc {int /*<<< orphan*/  (* handle_irq ) (unsigned int,struct irq_desc*) ;} ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,struct irq_desc*,unsigned int) ; 
 struct irq_desc* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,struct irq_desc*) ; 
 scalar_t__ FUNC5 (int) ; 

bool FUNC6(unsigned irq, struct pt_regs *regs)
{
	struct irq_desc *desc;
	int overflow;

	overflow = FUNC0();

	desc = FUNC2(irq);
	if (FUNC5(!desc))
		return false;

	if (!FUNC1(overflow, desc, irq)) {
		if (FUNC5(overflow))
			FUNC3();
		desc->handle_irq(irq, desc);
	}

	return true;
}