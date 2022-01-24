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
struct irqaction {void* dev_id; int flags; struct irqaction* next; int /*<<< orphan*/  name; int /*<<< orphan*/  handler; } ;
struct TYPE_2__ {struct irqaction* action; } ;

/* Variables and functions */
 int IRQF_SHARED ; 
 int NR_IRQS ; 
 int SA_STATIC_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  irq_action_lock ; 
 int /*<<< orphan*/  FUNC1 (struct irqaction*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,...) ; 
 scalar_t__ sparc_cpu_model ; 
 TYPE_1__* sparc_irq ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ sun4d ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 

void FUNC6(unsigned int irq, void *dev_id)
{
	struct irqaction * action;
	struct irqaction **actionp;
        unsigned long flags;
	unsigned int cpu_irq;
	
	if (sparc_cpu_model == sun4d) {
		extern void FUNC0(unsigned int, void *);
		
		FUNC0(irq, dev_id);
		return;
	}
	cpu_irq = irq & (NR_IRQS - 1);
        if (cpu_irq > 14) {  /* 14 irq levels on the sparc */
                FUNC2("Trying to free bogus IRQ %d\n", irq);
                return;
        }

	FUNC3(&irq_action_lock, flags);

	actionp = &sparc_irq[cpu_irq].action;
	action = *actionp;

	if (!action->handler) {
		FUNC2("Trying to free free IRQ%d\n",irq);
		goto out_unlock;
	}
	if (dev_id) {
		for (; action; action = action->next) {
			if (action->dev_id == dev_id)
				break;
			actionp = &action->next;
		}
		if (!action) {
			FUNC2("Trying to free free shared IRQ%d\n",irq);
			goto out_unlock;
		}
	} else if (action->flags & IRQF_SHARED) {
		FUNC2("Trying to free shared IRQ%d with NULL device ID\n", irq);
		goto out_unlock;
	}
	if (action->flags & SA_STATIC_ALLOC)
	{
		/* This interrupt is marked as specially allocated
		 * so it is a bad idea to free it.
		 */
		FUNC2("Attempt to free statically allocated IRQ%d (%s)\n",
		       irq, action->name);
		goto out_unlock;
	}

	*actionp = action->next;

	FUNC4(&irq_action_lock, flags);

	FUNC5(irq);

	FUNC3(&irq_action_lock, flags);

	FUNC1(action);

	if (!sparc_irq[cpu_irq].action)
		FUNC0(irq);

out_unlock:
	FUNC4(&irq_action_lock, flags);
}