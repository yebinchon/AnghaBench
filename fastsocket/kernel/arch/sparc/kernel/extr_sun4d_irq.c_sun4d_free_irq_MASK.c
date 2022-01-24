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
struct irqaction {void* dev_id; int flags; struct irqaction* next; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {struct irqaction* action; } ;

/* Variables and functions */
 int IRQF_SHARED ; 
 int SA_STATIC_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct irqaction** irq_action ; 
 int /*<<< orphan*/  irq_action_lock ; 
 int /*<<< orphan*/  FUNC1 (struct irqaction*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,...) ; 
 TYPE_1__* sbus_actions ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 

void FUNC6(unsigned int irq, void *dev_id)
{
	struct irqaction *action, **actionp;
	struct irqaction *tmp = NULL;
        unsigned long flags;

	FUNC3(&irq_action_lock, flags);
	if (irq < 15)
		actionp = irq + irq_action;
	else
		actionp = &(sbus_actions[irq - (1 << 5)].action);
	action = *actionp;
	if (!action) {
		FUNC2("Trying to free free IRQ%d\n",irq);
		goto out_unlock;
	}
	if (dev_id) {
		for (; action; action = action->next) {
			if (action->dev_id == dev_id)
				break;
			tmp = action;
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
	
	if (action && tmp)
		tmp->next = action->next;
	else
		*actionp = action->next;

	FUNC4(&irq_action_lock, flags);

	FUNC5(irq);

	FUNC3(&irq_action_lock, flags);

	FUNC1(action);

	if (!(*actionp))
		FUNC0(irq);

out_unlock:
	FUNC4(&irq_action_lock, flags);
}