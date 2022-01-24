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
struct vcpu_info {int /*<<< orphan*/  evtchn_upcall_pending; scalar_t__ evtchn_upcall_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct vcpu_info* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  xen_vcpu ; 

__attribute__((used)) static void FUNC4(void)
{
	struct vcpu_info *vcpu;

	/* We don't need to worry about being preempted here, since
	   either a) interrupts are disabled, so no preemption, or b)
	   the caller is confused and is trying to re-enable interrupts
	   on an indeterminate processor. */

	vcpu = FUNC1(xen_vcpu);
	vcpu->evtchn_upcall_mask = 0;

	/* Doesn't matter if we get preempted here, because any
	   pending event will get dealt with anyway. */

	FUNC0(); /* unmask then check (avoid races) */
	if (FUNC2(vcpu->evtchn_upcall_pending))
		FUNC3();
}