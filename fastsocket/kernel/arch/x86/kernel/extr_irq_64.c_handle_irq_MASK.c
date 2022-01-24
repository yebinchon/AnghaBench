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
struct irq_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,struct irq_desc*) ; 
 struct irq_desc* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_regs*) ; 
 scalar_t__ FUNC3 (int) ; 

bool FUNC4(unsigned irq, struct pt_regs *regs)
{
	struct irq_desc *desc;

	FUNC2(regs);

	desc = FUNC1(irq);
	if (FUNC3(!desc))
		return false;

	FUNC0(irq, desc);
	return true;
}