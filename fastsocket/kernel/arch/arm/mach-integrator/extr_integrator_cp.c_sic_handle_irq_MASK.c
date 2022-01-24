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
 scalar_t__ INTCP_VA_SIC_BASE ; 
 scalar_t__ IRQ_SIC_START ; 
 scalar_t__ IRQ_STATUS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,struct irq_desc*) ; 
 unsigned int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned long FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4(unsigned int irq, struct irq_desc *desc)
{
	unsigned long status = FUNC3(INTCP_VA_SIC_BASE + IRQ_STATUS);

	if (status == 0) {
		FUNC0(irq, desc);
		return;
	}

	do {
		irq = FUNC1(status) - 1;
		status &= ~(1 << irq);

		irq += IRQ_SIC_START;

		FUNC2(irq);
	} while (status);
}