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
struct irqaction {unsigned long flags; char const* name; struct irqaction* next; void* dev_id; scalar_t__ handler; } ;
typedef  scalar_t__ irq_handler_t ;
struct TYPE_2__ {struct irqaction* action; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned long IRQF_DISABLED ; 
 unsigned long IRQF_SHARED ; 
 scalar_t__ MAX_STATIC_ALLOC ; 
 unsigned long SA_STATIC_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct irqaction** irq_action ; 
 int /*<<< orphan*/  irq_action_lock ; 
 struct irqaction* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,...) ; 
 TYPE_1__* sbus_actions ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ static_irq_count ; 
 struct irqaction* static_irqaction ; 

int FUNC5(unsigned int irq,
		irq_handler_t handler,
		unsigned long irqflags, const char * devname, void *dev_id)
{
	struct irqaction *action, *tmp = NULL, **actionp;
	unsigned long flags;
	int ret;
	
	if(irq > 14 && irq < (1 << 5)) {
		ret = -EINVAL;
		goto out;
	}

	if (!handler) {
		ret = -EINVAL;
		goto out;
	}

	FUNC3(&irq_action_lock, flags);

	if (irq >= (1 << 5))
		actionp = &(sbus_actions[irq - (1 << 5)].action);
	else
		actionp = irq + irq_action;
	action = *actionp;
	
	if (action) {
		if ((action->flags & IRQF_SHARED) && (irqflags & IRQF_SHARED)) {
			for (tmp = action; tmp->next; tmp = tmp->next);
		} else {
			ret = -EBUSY;
			goto out_unlock;
		}
		if ((action->flags & IRQF_DISABLED) ^ (irqflags & IRQF_DISABLED)) {
			FUNC2("Attempt to mix fast and slow interrupts on IRQ%d denied\n", irq);
			ret = -EBUSY;
			goto out_unlock;
		}
		action = NULL;		/* Or else! */
	}

	/* If this is flagged as statically allocated then we use our
	 * private struct which is never freed.
	 */
	if (irqflags & SA_STATIC_ALLOC) {
		if (static_irq_count < MAX_STATIC_ALLOC)
			action = &static_irqaction[static_irq_count++];
		else
			FUNC2("Request for IRQ%d (%s) SA_STATIC_ALLOC failed using kmalloc\n", irq, devname);
	}
	
	if (action == NULL)
		action = FUNC1(sizeof(struct irqaction),
						     GFP_ATOMIC);
	
	if (!action) { 
		ret = -ENOMEM;
		goto out_unlock;
	}

	action->handler = handler;
	action->flags = irqflags;
	action->name = devname;
	action->next = NULL;
	action->dev_id = dev_id;

	if (tmp)
		tmp->next = action;
	else
		*actionp = action;
		
	FUNC0(irq);

	ret = 0;
out_unlock:
	FUNC4(&irq_action_lock, flags);
out:
	return ret;
}