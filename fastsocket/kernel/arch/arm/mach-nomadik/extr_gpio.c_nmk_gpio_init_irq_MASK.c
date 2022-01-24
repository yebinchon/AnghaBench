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
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct nmk_gpio_chip {int /*<<< orphan*/  parent_irq; TYPE_1__ chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_VALID ; 
 unsigned int NMK_GPIO_PER_CHIP ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  nmk_gpio_irq_chip ; 
 int /*<<< orphan*/  nmk_gpio_irq_handler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,struct nmk_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nmk_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct nmk_gpio_chip *nmk_chip)
{
	unsigned int first_irq;
	int i;

	first_irq = FUNC0(nmk_chip->chip.base);
	for (i = first_irq; i < first_irq + NMK_GPIO_PER_CHIP; i++) {
		FUNC2(i, &nmk_gpio_irq_chip);
		FUNC6(i, handle_edge_irq);
		FUNC5(i, IRQF_VALID);
		FUNC3(i, nmk_chip);
	}
	FUNC1(nmk_chip->parent_irq, nmk_gpio_irq_handler);
	FUNC4(nmk_chip->parent_irq, nmk_chip);
	return 0;
}