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
 int /*<<< orphan*/  IRQ_LEVEL ; 
 int /*<<< orphan*/  IRQ_NOREQUEST ; 
 TYPE_1__* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  i8259_pic ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct irq_host *h, unsigned int virq,
			  irq_hw_number_t hw)
{
	FUNC1("i8259_host_map(%d, 0x%lx)\n", virq, hw);

	/* We block the internal cascade */
	if (hw == 2)
		FUNC0(virq)->status |= IRQ_NOREQUEST;

	/* We use the level handler only for now, we might want to
	 * be more cautious here but that works for now
	 */
	FUNC0(virq)->status |= IRQ_LEVEL;
	FUNC2(virq, &i8259_pic, handle_level_irq);
	return 0;
}