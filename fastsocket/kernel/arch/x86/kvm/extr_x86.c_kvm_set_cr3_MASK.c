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
struct TYPE_3__ {int /*<<< orphan*/  (* new_cr3 ) (struct kvm_vcpu*) ;} ;
struct TYPE_4__ {unsigned long cr3; TYPE_1__ mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 unsigned long CR3_L_MODE_RESERVED_BITS ; 
 unsigned long CR3_PAE_RESERVED_BITS ; 
 unsigned long CR3_PCID_ENABLED_RESERVED_BITS ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  X86_CR4_PCIDE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(struct kvm_vcpu *vcpu, unsigned long cr3)
{
	if (cr3 == vcpu->arch.cr3 && !FUNC8(vcpu)) {
		FUNC5(vcpu);
		FUNC4(vcpu);
		return 0;
	}

	if (FUNC1(vcpu)) {
		if (FUNC6(vcpu, X86_CR4_PCIDE)) {
			if (cr3 & CR3_PCID_ENABLED_RESERVED_BITS)
				return 1;
		} else
			if (cr3 & CR3_L_MODE_RESERVED_BITS)
				return 1;
	} else {
		if (FUNC2(vcpu)) {
			if (cr3 & CR3_PAE_RESERVED_BITS)
				return 1;
			if (FUNC3(vcpu) && !FUNC7(vcpu, cr3))
				return 1;
		}
		/*
		 * We don't check reserved bits in nonpae mode, because
		 * this isn't enforced, and VMware depends on this.
		 */
	}

	/*
	 * Does the new cr3 value map to physical memory? (Note, we
	 * catch an invalid cr3 even in real-mode, because it would
	 * cause trouble later on when we turn on paging anyway.)
	 *
	 * A real CPU would silently accept an invalid cr3 and would
	 * attempt to use it - with largely undefined (and often hard
	 * to debug) behavior on the guest side.
	 */
	if (FUNC10(!FUNC0(vcpu->kvm, cr3 >> PAGE_SHIFT)))
		return 1;
	vcpu->arch.cr3 = cr3;
	vcpu->arch.mmu.new_cr3(vcpu);
	return 0;
}