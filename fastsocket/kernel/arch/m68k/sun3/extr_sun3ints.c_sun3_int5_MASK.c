#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int* irqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * led_pattern ; 
 int* sun3_intreg ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
#ifdef CONFIG_SUN3
	intersil_clear();
#endif
        *sun3_intreg |=  (1 << irq);
#ifdef CONFIG_SUN3
	intersil_clear();
#endif
        FUNC0(1);
#ifndef CONFIG_SMP
	FUNC5(FUNC6(FUNC1()));
#endif
        if (!(FUNC3(0).irqs[irq] % 20))
                FUNC4(led_pattern[(FUNC3(0).irqs[irq] % 160) / 20]);
	return IRQ_HANDLED;
}