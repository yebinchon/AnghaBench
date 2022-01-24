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
struct sih_agent {unsigned int irq_base; int /*<<< orphan*/  edge_work; int /*<<< orphan*/  edge_change; } ;
struct irq_desc {unsigned int status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int EINVAL ; 
 unsigned int IRQ_TYPE_EDGE_FALLING ; 
 unsigned int IRQ_TYPE_EDGE_RISING ; 
 unsigned int IRQ_TYPE_SENSE_MASK ; 
 struct sih_agent* FUNC1 (unsigned int) ; 
 struct irq_desc* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sih_agent_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static int FUNC7(unsigned irq, unsigned trigger)
{
	struct sih_agent *sih = FUNC1(irq);
	struct irq_desc *desc = FUNC2(irq);
	unsigned long flags;

	if (!desc) {
		FUNC3("twl4030: Invalid IRQ: %d\n", irq);
		return -EINVAL;
	}

	if (trigger & ~(IRQ_TYPE_EDGE_FALLING | IRQ_TYPE_EDGE_RISING))
		return -EINVAL;

	FUNC5(&sih_agent_lock, flags);
	if ((desc->status & IRQ_TYPE_SENSE_MASK) != trigger) {
		desc->status &= ~IRQ_TYPE_SENSE_MASK;
		desc->status |= trigger;
		sih->edge_change |= FUNC0(irq - sih->irq_base);
		FUNC4(wq, &sih->edge_work);
	}
	FUNC6(&sih_agent_lock, flags);
	return 0;
}