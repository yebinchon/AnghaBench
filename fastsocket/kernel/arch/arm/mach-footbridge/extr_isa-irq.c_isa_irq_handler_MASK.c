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
struct irq_desc {int dummy; } ;

/* Variables and functions */
 scalar_t__ PCIIACK_BASE ; 
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static void
FUNC3(unsigned int irq, struct irq_desc *desc)
{
	unsigned int isa_irq = *(unsigned char *)PCIIACK_BASE;

	if (isa_irq < FUNC0(0) || isa_irq >= FUNC0(16)) {
		FUNC1(isa_irq, desc);
		return;
	}

	FUNC2(isa_irq);
}