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
struct tc6393xb {unsigned int irq_base; int /*<<< orphan*/  irq; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int IRQF_PROBE ; 
 int IRQF_VALID ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_FALLING ; 
 unsigned int TC6393XB_NR_IRQS ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 struct tc6393xb* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,struct tc6393xb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct tc6393xb*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tc6393xb_chip ; 
 int /*<<< orphan*/  tc6393xb_irq ; 

__attribute__((used)) static void FUNC8(struct platform_device *dev)
{
	struct tc6393xb *tc6393xb = FUNC0(dev);
	unsigned int irq, irq_base;

	irq_base = tc6393xb->irq_base;

	for (irq = irq_base; irq < irq_base + TC6393XB_NR_IRQS; irq++) {
		FUNC2(irq, &tc6393xb_chip);
		FUNC3(irq, tc6393xb);
		FUNC6(irq, handle_edge_irq);
		FUNC5(irq, IRQF_VALID | IRQF_PROBE);
	}

	FUNC7(tc6393xb->irq, IRQ_TYPE_EDGE_FALLING);
	FUNC4(tc6393xb->irq, tc6393xb);
	FUNC1(tc6393xb->irq, tc6393xb_irq);
}