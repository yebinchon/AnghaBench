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
struct pt_regs {int /*<<< orphan*/ * u_regs; int /*<<< orphan*/  npc; int /*<<< orphan*/  pc; } ;
struct irqaction {scalar_t__ handler; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {struct irqaction* action; } ;

/* Variables and functions */
 int NR_IRQS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_1__* sparc_irq ; 

void FUNC2(int irq, void *dev_id, struct pt_regs * regs)
{
        int i;
	struct irqaction * action;
	unsigned int cpu_irq;
	
	cpu_irq = irq & (NR_IRQS - 1);
	action = sparc_irq[cpu_irq].action;

        FUNC1("IO device interrupt, irq = %d\n", irq);
        FUNC1("PC = %08lx NPC = %08lx FP=%08lx\n", regs->pc, 
		    regs->npc, regs->u_regs[14]);
	if (action) {
		FUNC1("Expecting: ");
        	for (i = 0; i < 16; i++)
                	if (action->handler)
                        	FUNC1("[%s:%d:0x%x] ", action->name,
				       (int) i, (unsigned int) action->handler);
	}
        FUNC1("AIEEE\n");
	FUNC0("bogus interrupt received");
}