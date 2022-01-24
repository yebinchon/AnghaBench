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
struct t7l66xb {unsigned int irq_base; int /*<<< orphan*/  irq; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int IRQF_PROBE ; 
 int IRQF_VALID ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_FALLING ; 
 unsigned int T7L66XB_NR_IRQS ; 
 int /*<<< orphan*/  handle_level_irq ; 
 struct t7l66xb* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,struct t7l66xb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct t7l66xb*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  t7l66xb_chip ; 
 int /*<<< orphan*/  t7l66xb_irq ; 

__attribute__((used)) static void FUNC8(struct platform_device *dev)
{
	struct t7l66xb *t7l66xb = FUNC0(dev);
	unsigned int irq, irq_base;

	irq_base = t7l66xb->irq_base;

	for (irq = irq_base; irq < irq_base + T7L66XB_NR_IRQS; irq++) {
		FUNC2(irq, &t7l66xb_chip);
		FUNC3(irq, t7l66xb);
		FUNC6(irq, handle_level_irq);
#ifdef CONFIG_ARM
		set_irq_flags(irq, IRQF_VALID | IRQF_PROBE);
#endif
	}

	FUNC7(t7l66xb->irq, IRQ_TYPE_EDGE_FALLING);
	FUNC4(t7l66xb->irq, t7l66xb);
	FUNC1(t7l66xb->irq, t7l66xb_irq);
}