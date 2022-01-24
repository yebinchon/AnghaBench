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
 unsigned int TC6393XB_NR_IRQS ; 
 struct tc6393xb* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct platform_device *dev)
{
	struct tc6393xb *tc6393xb = FUNC0(dev);
	unsigned int irq, irq_base;

	FUNC1(tc6393xb->irq, NULL);
	FUNC4(tc6393xb->irq, NULL);

	irq_base = tc6393xb->irq_base;

	for (irq = irq_base; irq < irq_base + TC6393XB_NR_IRQS; irq++) {
		FUNC5(irq, 0);
		FUNC2(irq, NULL);
		FUNC3(irq, NULL);
	}
}