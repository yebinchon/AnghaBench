#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vcpu_info {unsigned long evtchn_upcall_mask; int /*<<< orphan*/  evtchn_upcall_pending; } ;

/* Variables and functions */
 unsigned long X86_EFLAGS_IF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct vcpu_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  xen_vcpu ; 

__attribute__((used)) static void FUNC7(unsigned long flags)
{
	struct vcpu_info *vcpu;

	/* convert from IF type flag */
	flags = !(flags & X86_EFLAGS_IF);

	/* There's a one instruction preempt window here.  We need to
	   make sure we're don't switch CPUs between getting the vcpu
	   pointer and updating the mask. */
	FUNC3();
	vcpu = FUNC1(xen_vcpu);
	vcpu->evtchn_upcall_mask = flags;
	FUNC4();

	/* Doesn't matter if we get preempted here, because any
	   pending event will get dealt with anyway. */

	if (flags == 0) {
		FUNC2();
		FUNC0(); /* unmask then check (avoid races) */
		if (FUNC5(vcpu->evtchn_upcall_pending))
			FUNC6();
	}
}