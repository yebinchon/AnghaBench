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
struct sbus_action {struct irqaction* action; } ;
struct pt_regs {int dummy; } ;
struct irqaction {struct irqaction* next; int /*<<< orphan*/  dev_id; int /*<<< orphan*/  (* handler ) (int,int /*<<< orphan*/ ) ;} ;
struct TYPE_2__ {int /*<<< orphan*/ * irqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct irqaction** irq_action ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__ FUNC8 (int) ; 
 int* pil_to_sbus ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned int) ; 
 struct sbus_action* sbus_actions ; 
 struct pt_regs* FUNC10 (struct pt_regs*) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ *,struct pt_regs*) ; 

void FUNC15(int irq, struct pt_regs * regs)
{
	struct pt_regs *old_regs;
	struct irqaction * action;
	int cpu = FUNC11();
	/* SBUS IRQ level (1 - 7) */
	int sbusl = pil_to_sbus[irq];
	
	/* FIXME: Is this necessary?? */
	FUNC4();
	
	FUNC5(1 << irq);
	
	old_regs = FUNC10(regs);
	FUNC6();
	FUNC8(cpu).irqs[irq]++;
	if (!sbusl) {
		action = *(irq + irq_action);
		if (!action)
			FUNC14(irq, NULL, regs);
		do {
			action->handler(irq, action->dev_id);
			action = action->next;
		} while (action);
	} else {
		int bus_mask = FUNC3(sbusl) & 0x3ffff;
		int sbino;
		struct sbus_action *actionp;
		unsigned mask, slot;
		int sbil = (sbusl << 2);
		
		FUNC2(sbusl, bus_mask);
		
		/* Loop for each pending SBI */
		for (sbino = 0; bus_mask; sbino++, bus_mask >>= 1)
			if (bus_mask & 1) {
				mask = FUNC1(FUNC0(sbino), 0xf << sbil);
				mask &= (0xf << sbil);
				actionp = sbus_actions + (sbino << 5) + (sbil);
				/* Loop for each pending SBI slot */
				for (slot = (1 << sbil); mask; slot <<= 1, actionp++)
					if (mask & slot) {
						mask &= ~slot;
						action = actionp->action;
						
						if (!action)
							FUNC14(irq, NULL, regs);
						do {
							action->handler(irq, action->dev_id);
							action = action->next;
						} while (action);
						FUNC9(FUNC0(sbino), slot);
					}
			}
	}
	FUNC7();
	FUNC10(old_regs);
}