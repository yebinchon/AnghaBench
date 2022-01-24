#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct lg_cpu {unsigned long esp1; int ss1; TYPE_3__* lg; TYPE_1__* regs; } ;
struct TYPE_6__ {TYPE_2__* lguest_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq_enabled; } ;
struct TYPE_4__ {int ss; int esp; int eflags; int cs; int eip; int errcode; } ;

/* Variables and functions */
 int GUEST_PL ; 
 int X86_EFLAGS_IF ; 
 int __KERNEL_CS ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (struct lg_cpu*,unsigned long) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lg_cpu*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct lg_cpu*,unsigned long*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct lg_cpu *cpu, u32 lo, u32 hi,
				bool has_err)
{
	unsigned long gstack, origstack;
	u32 eflags, ss, irq_enable;
	unsigned long virtstack;

	/*
	 * There are two cases for interrupts: one where the Guest is already
	 * in the kernel, and a more complex one where the Guest is in
	 * userspace.  We check the privilege level to find out.
	 */
	if ((cpu->regs->ss&0x3) != GUEST_PL) {
		/*
		 * The Guest told us their kernel stack with the SET_STACK
		 * hypercall: both the virtual address and the segment.
		 */
		virtstack = cpu->esp1;
		ss = cpu->ss1;

		origstack = gstack = FUNC1(cpu, virtstack);
		/*
		 * We push the old stack segment and pointer onto the new
		 * stack: when the Guest does an "iret" back from the interrupt
		 * handler the CPU will notice they're dropping privilege
		 * levels and expect these here.
		 */
		FUNC5(cpu, &gstack, cpu->regs->ss);
		FUNC5(cpu, &gstack, cpu->regs->esp);
	} else {
		/* We're staying on the same Guest (kernel) stack. */
		virtstack = cpu->regs->esp;
		ss = cpu->regs->ss;

		origstack = gstack = FUNC1(cpu, virtstack);
	}

	/*
	 * Remember that we never let the Guest actually disable interrupts, so
	 * the "Interrupt Flag" bit is always set.  We copy that bit from the
	 * Guest's "irq_enabled" field into the eflags word: we saw the Guest
	 * copy it back in "lguest_iret".
	 */
	eflags = cpu->regs->eflags;
	if (FUNC0(irq_enable, &cpu->lg->lguest_data->irq_enabled) == 0
	    && !(irq_enable & X86_EFLAGS_IF))
		eflags &= ~X86_EFLAGS_IF;

	/*
	 * An interrupt is expected to push three things on the stack: the old
	 * "eflags" word, the old code segment, and the old instruction
	 * pointer.
	 */
	FUNC5(cpu, &gstack, eflags);
	FUNC5(cpu, &gstack, cpu->regs->cs);
	FUNC5(cpu, &gstack, cpu->regs->eip);

	/* For the six traps which supply an error code, we push that, too. */
	if (has_err)
		FUNC5(cpu, &gstack, cpu->regs->errcode);

	/*
	 * Now we've pushed all the old state, we change the stack, the code
	 * segment and the address to execute.
	 */
	cpu->regs->ss = ss;
	cpu->regs->esp = virtstack + (gstack - origstack);
	cpu->regs->cs = (__KERNEL_CS|GUEST_PL);
	cpu->regs->eip = FUNC2(lo, hi);

	/*
	 * There are two kinds of interrupt handlers: 0xE is an "interrupt
	 * gate" which expects interrupts to be disabled on entry.
	 */
	if (FUNC3(lo, hi) == 0xE)
		if (FUNC6(0, &cpu->lg->lguest_data->irq_enabled))
			FUNC4(cpu, "Disabling interrupts");
}