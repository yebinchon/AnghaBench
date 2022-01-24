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
struct TYPE_5__ {unsigned long cr4; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_4__ {scalar_t__ vm86_active; } ;
struct TYPE_6__ {TYPE_1__ rmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR4_READ_SHADOW ; 
 int /*<<< orphan*/  GUEST_CR4 ; 
 unsigned long KVM_PMODE_VM_CR4_ALWAYS_ON ; 
 unsigned long KVM_RMODE_VM_CR4_ALWAYS_ON ; 
 scalar_t__ enable_ept ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*,struct kvm_vcpu*) ; 
 TYPE_3__* FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu, unsigned long cr4)
{
	unsigned long hw_cr4 = cr4 | (FUNC1(vcpu)->rmode.vm86_active ?
		    KVM_RMODE_VM_CR4_ALWAYS_ON : KVM_PMODE_VM_CR4_ALWAYS_ON);

	vcpu->arch.cr4 = cr4;
	if (enable_ept)
		FUNC0(&hw_cr4, vcpu);

	FUNC2(CR4_READ_SHADOW, cr4);
	FUNC2(GUEST_CR4, hw_cr4);
}