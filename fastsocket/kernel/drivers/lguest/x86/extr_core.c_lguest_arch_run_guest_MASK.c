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
struct TYPE_3__ {int /*<<< orphan*/  last_pagefault; } ;
struct lg_cpu {TYPE_2__* regs; TYPE_1__ arch; scalar_t__ ts; } ;
struct TYPE_4__ {int trapnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_SYSENTER_CS ; 
 int /*<<< orphan*/  X86_FEATURE_SEP ; 
 int /*<<< orphan*/  __KERNEL_CS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct lg_cpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct lg_cpu *cpu)
{
	/*
	 * Remember the awfully-named TS bit?  If the Guest has asked to set it
	 * we set it now, so we can trap and pass that trap to the Guest if it
	 * uses the FPU.
	 */
	if (cpu->ts)
		FUNC6(current);

	/*
	 * SYSENTER is an optimized way of doing system calls.  We can't allow
	 * it because it always jumps to privilege level 0.  A normal Guest
	 * won't try it because we don't advertise it in CPUID, but a malicious
	 * Guest (or malicious Guest userspace program) could, so we tell the
	 * CPU to disable it before running the Guest.
	 */
	if (FUNC0(X86_FEATURE_SEP))
		FUNC7(MSR_IA32_SYSENTER_CS, 0, 0);

	/*
	 * Now we actually run the Guest.  It will return when something
	 * interesting happens, and we can examine its registers to see what it
	 * was doing.
	 */
	FUNC5(cpu, FUNC1(FUNC3()));

	/*
	 * Note that the "regs" structure contains two extra entries which are
	 * not really registers: a trap number which says what interrupt or
	 * trap made the switcher code come back, and an error code which some
	 * traps set.
	 */

	 /* Restore SYSENTER if it's supposed to be on. */
	 if (FUNC0(X86_FEATURE_SEP))
		FUNC7(MSR_IA32_SYSENTER_CS, __KERNEL_CS, 0);

	/*
	 * If the Guest page faulted, then the cr2 register will tell us the
	 * bad virtual address.  We have to grab this now, because once we
	 * re-enable interrupts an interrupt could fault and thus overwrite
	 * cr2, or we could even move off to a different CPU.
	 */
	if (cpu->regs->trapnum == 14)
		cpu->arch.last_pagefault = FUNC4();
	/*
	 * Similarly, if we took a trap because the Guest used the FPU,
	 * we have to restore the FPU it expects to see.
	 * math_state_restore() may sleep and we may even move off to
	 * a different CPU. So all the critical stuff should be done
	 * before this.
	 */
	else if (cpu->regs->trapnum == 7)
		FUNC2();
}