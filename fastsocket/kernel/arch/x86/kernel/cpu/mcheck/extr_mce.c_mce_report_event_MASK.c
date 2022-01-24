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
struct pt_regs {int flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* send_IPI_self ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MCE_SELF_VECTOR ; 
 int X86_EFLAGS_IF ; 
 int X86_VM_MASK ; 
 TYPE_1__* apic ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  cpu_has_apic ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pt_regs *regs)
{
	if (regs->flags & (X86_VM_MASK|X86_EFLAGS_IF)) {
		FUNC1();
		/*
		 * Triggering the work queue here is just an insurance
		 * policy in case the syscall exit notify handler
		 * doesn't run soon enough or ends up running on the
		 * wrong CPU (can happen when audit sleeps)
		 */
		FUNC2();
		return;
	}

#ifdef CONFIG_X86_LOCAL_APIC
	/*
	 * Without APIC do not notify. The event will be picked
	 * up eventually.
	 */
	if (!cpu_has_apic)
		return;

	/*
	 * When interrupts are disabled we cannot use
	 * kernel services safely. Trigger an self interrupt
	 * through the APIC to instead do the notification
	 * after interrupts are reenabled again.
	 */
	apic->send_IPI_self(MCE_SELF_VECTOR);

	/*
	 * Wait for idle afterwards again so that we don't leave the
	 * APIC in a non idle state because the normal APIC writes
	 * cannot exclude us.
	 */
	apic_wait_icr_idle();
#endif
}