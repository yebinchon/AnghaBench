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
 int IRQF_PROBE ; 
 int IRQF_VALID ; 
 int /*<<< orphan*/  IT8152_INTC_LDCNIMR ; 
 int /*<<< orphan*/  IT8152_INTC_LDCNIRR ; 
 int /*<<< orphan*/  IT8152_INTC_LPCNIMR ; 
 int /*<<< orphan*/  IT8152_INTC_LPCNIRR ; 
 int /*<<< orphan*/  IT8152_INTC_PDCNIMR ; 
 int /*<<< orphan*/  IT8152_INTC_PDCNIRR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int IT8152_LAST_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  it8152_irq_chip ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	int irq;

	FUNC1((0xffff), IT8152_INTC_PDCNIMR);
	FUNC1((0), IT8152_INTC_PDCNIRR);
	FUNC1((0xffff), IT8152_INTC_LPCNIMR);
	FUNC1((0), IT8152_INTC_LPCNIRR);
	FUNC1((0xffff), IT8152_INTC_LDCNIMR);
	FUNC1((0), IT8152_INTC_LDCNIRR);

	for (irq = FUNC0(0); irq <= IT8152_LAST_IRQ; irq++) {
		FUNC2(irq, &it8152_irq_chip);
		FUNC4(irq, handle_level_irq);
		FUNC3(irq, IRQF_VALID | IRQF_PROBE);
	}
}