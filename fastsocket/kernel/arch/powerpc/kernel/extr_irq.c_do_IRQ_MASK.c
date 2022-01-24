#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct TYPE_6__ {scalar_t__ decr_int; } ;
struct TYPE_5__ {TYPE_2__ fields; } ;
struct TYPE_8__ {TYPE_1__ int_dword; } ;
struct TYPE_7__ {unsigned int (* get_irq ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FW_FEATURE_ISERIES ; 
 unsigned int NO_IRQ ; 
 unsigned int NO_IRQ_IGNORE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_3__ ppc_md ; 
 int /*<<< orphan*/  ppc_spurious_interrupts ; 
 struct pt_regs* FUNC6 (struct pt_regs*) ; 
 unsigned int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct pt_regs*) ; 

void FUNC9(struct pt_regs *regs)
{
	struct pt_regs *old_regs = FUNC6(regs);
	unsigned int irq;

	FUNC4();

	FUNC0();

	irq = ppc_md.get_irq();

	if (irq != NO_IRQ && irq != NO_IRQ_IGNORE)
		FUNC3(irq);
	else if (irq != NO_IRQ_IGNORE)
		/* That's not SMP safe ... but who cares ? */
		ppc_spurious_interrupts++;

	FUNC5();
	FUNC6(old_regs);

#ifdef CONFIG_PPC_ISERIES
	if (firmware_has_feature(FW_FEATURE_ISERIES) &&
			get_lppaca()->int_dword.fields.decr_int) {
		get_lppaca()->int_dword.fields.decr_int = 0;
		/* Signal a fake decrementer interrupt */
		timer_interrupt(regs);
	}
#endif
}