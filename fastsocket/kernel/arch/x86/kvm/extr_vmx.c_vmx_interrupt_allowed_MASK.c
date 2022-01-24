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
 int /*<<< orphan*/  GUEST_INTERRUPTIBILITY_INFO ; 
 int GUEST_INTR_STATE_MOV_SS ; 
 int GUEST_INTR_STATE_STI ; 
 int /*<<< orphan*/  GUEST_RFLAGS ; 
 int X86_EFLAGS_IF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct kvm_vcpu *vcpu)
{
	return (FUNC1(GUEST_RFLAGS) & X86_EFLAGS_IF) &&
		!(FUNC0(GUEST_INTERRUPTIBILITY_INFO) &
			(GUEST_INTR_STATE_STI | GUEST_INTR_STATE_MOV_SS));
}