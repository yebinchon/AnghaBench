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
struct irq_host {int dummy; } ;
typedef  int irq_hw_number_t ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_LEVEL ; 
 int MV64x60_LEVEL1_GPP ; 
 int MV64x60_LEVEL1_MASK ; 
 int MV64x60_LEVEL1_OFFSET ; 
 TYPE_1__* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/ * mv64x60_chips ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct irq_host *h, unsigned int virq,
			  irq_hw_number_t hwirq)
{
	int level1;

	FUNC1(virq)->status |= IRQ_LEVEL;

	level1 = (hwirq & MV64x60_LEVEL1_MASK) >> MV64x60_LEVEL1_OFFSET;
	FUNC0(level1 > MV64x60_LEVEL1_GPP);
	FUNC2(virq, mv64x60_chips[level1], handle_level_irq);

	return 0;
}