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
typedef  scalar_t__ u32 ;
struct TYPE_6__ {struct desc_struct* idt; } ;
struct lg_cpu {TYPE_4__* lg; int /*<<< orphan*/  irqs_pending; TYPE_2__ arch; scalar_t__ halted; TYPE_1__* regs; } ;
struct desc_struct {int /*<<< orphan*/  b; int /*<<< orphan*/  a; } ;
struct TYPE_8__ {scalar_t__ noirq_start; scalar_t__ noirq_end; TYPE_3__* lguest_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  irq_pending; int /*<<< orphan*/  irq_enabled; } ;
struct TYPE_5__ {scalar_t__ eip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FIRST_EXTERNAL_VECTOR ; 
 unsigned int LGUEST_IRQS ; 
 int /*<<< orphan*/  X86_EFLAGS_IF ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lg_cpu*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct lg_cpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct lg_cpu*) ; 

void FUNC8(struct lg_cpu *cpu, unsigned int irq, bool more)
{
	struct desc_struct *idt;

	FUNC0(irq >= LGUEST_IRQS);

	/*
	 * They may be in the middle of an iret, where they asked us never to
	 * deliver interrupts.
	 */
	if (cpu->regs->eip >= cpu->lg->noirq_start &&
	   (cpu->regs->eip < cpu->lg->noirq_end))
		return;

	/* If they're halted, interrupts restart them. */
	if (cpu->halted) {
		/* Re-enable interrupts. */
		if (FUNC5(X86_EFLAGS_IF, &cpu->lg->lguest_data->irq_enabled))
			FUNC4(cpu, "Re-enabling interrupts");
		cpu->halted = 0;
	} else {
		/* Otherwise we check if they have interrupts disabled. */
		u32 irq_enabled;
		if (FUNC2(irq_enabled, &cpu->lg->lguest_data->irq_enabled))
			irq_enabled = 0;
		if (!irq_enabled) {
			/* Make sure they know an IRQ is pending. */
			FUNC5(X86_EFLAGS_IF,
				 &cpu->lg->lguest_data->irq_pending);
			return;
		}
	}

	/*
	 * Look at the IDT entry the Guest gave us for this interrupt.  The
	 * first 32 (FIRST_EXTERNAL_VECTOR) entries are for traps, so we skip
	 * over them.
	 */
	idt = &cpu->arch.idt[FIRST_EXTERNAL_VECTOR+irq];
	/* If they don't have a handler (yet?), we just ignore it */
	if (FUNC3(idt->a, idt->b)) {
		/* OK, mark it no longer pending and deliver it. */
		FUNC1(irq, cpu->irqs_pending);
		/*
		 * set_guest_interrupt() takes the interrupt descriptor and a
		 * flag to say whether this interrupt pushes an error code onto
		 * the stack as well: virtual interrupts never do.
		 */
		FUNC6(cpu, idt->a, idt->b, false);
	}

	/*
	 * Every time we deliver an interrupt, we update the timestamp in the
	 * Guest's lguest_data struct.  It would be better for the Guest if we
	 * did this more often, but it can actually be quite slow: doing it
	 * here is a compromise which means at least it gets updated every
	 * timer interrupt.
	 */
	FUNC7(cpu);

	/*
	 * If there are no other interrupts we want to deliver, clear
	 * the pending flag.
	 */
	if (!more)
		FUNC5(0, &cpu->lg->lguest_data->irq_pending);
}