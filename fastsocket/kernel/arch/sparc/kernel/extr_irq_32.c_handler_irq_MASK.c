#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct irqaction {struct irqaction* next; int /*<<< orphan*/  dev_id; int /*<<< orphan*/  (* handler ) (int,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {int /*<<< orphan*/ * irqs; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; struct irqaction* action; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPARC_IRQ_INPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_2__ FUNC4 (int) ; 
 struct pt_regs* FUNC5 (struct pt_regs*) ; 
 int FUNC6 () ; 
 scalar_t__ sparc_cpu_model ; 
 TYPE_1__* sparc_irq ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ sun4m ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,struct pt_regs*) ; 

void FUNC9(int irq, struct pt_regs * regs)
{
	struct pt_regs *old_regs;
	struct irqaction * action;
	int cpu = FUNC6();
#ifdef CONFIG_SMP
	extern void smp4m_irq_rotate(int cpu);
#endif

	old_regs = FUNC5(regs);
	FUNC2();
	FUNC0(irq);
#ifdef CONFIG_SMP
	/* Only rotate on lower priority IRQs (scsi, ethernet, etc.). */
	if((sparc_cpu_model==sun4m) && (irq < 10))
		smp4m_irq_rotate(cpu);
#endif
	action = sparc_irq[irq].action;
	sparc_irq[irq].flags |= SPARC_IRQ_INPROGRESS;
	FUNC4(cpu).irqs[irq]++;
	do {
		if (!action || !action->handler)
			FUNC8(irq, NULL, regs);
		action->handler(irq, action->dev_id);
		action = action->next;
	} while (action);
	sparc_irq[irq].flags &= ~SPARC_IRQ_INPROGRESS;
	FUNC1(irq);
	FUNC3();
	FUNC5(old_regs);
}