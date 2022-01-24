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
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GUEST_ACTIVITY_ACTIVE ; 
 scalar_t__ GUEST_ACTIVITY_HLT ; 
 int /*<<< orphan*/  GUEST_ACTIVITY_STATE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  yield_on_hlt ; 

__attribute__((used)) static void FUNC2(struct kvm_vcpu *vcpu)
{
	/* Ensure that we clear the HLT state in the VMCS.  We don't need to
	 * explicitly skip the instruction because if the HLT state is set, then
	 * the instruction is already executing and RIP has already been
	 * advanced. */
	if (!yield_on_hlt &&
	    FUNC0(GUEST_ACTIVITY_STATE) == GUEST_ACTIVITY_HLT)
		FUNC1(GUEST_ACTIVITY_STATE, GUEST_ACTIVITY_ACTIVE);
}