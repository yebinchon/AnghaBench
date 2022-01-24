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
struct TYPE_5__ {int cr4_pge; } ;
struct TYPE_6__ {TYPE_1__ base_role; } ;
struct TYPE_7__ {int cr3; unsigned long cr4; TYPE_2__ mmu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* set_cr4 ) (struct kvm_vcpu*,unsigned long) ;} ;

/* Variables and functions */
 unsigned long CR4_RESERVED_BITS ; 
 int X86_CR3_PCID_MASK ; 
 unsigned long X86_CR4_OSXSAVE ; 
 unsigned long X86_CR4_PAE ; 
 unsigned long X86_CR4_PCIDE ; 
 unsigned long X86_CR4_PGE ; 
 unsigned long X86_CR4_PSE ; 
 unsigned long X86_CR4_RDWRGSFS ; 
 unsigned long X86_CR4_SMEP ; 
 unsigned long X86_CR4_VMXE ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC4 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 unsigned long FUNC7 (struct kvm_vcpu*) ; 
 TYPE_4__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  tdp_enabled ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*) ; 

int FUNC11(struct kvm_vcpu *vcpu, unsigned long cr4)
{
	unsigned long old_cr4 = FUNC7(vcpu);
	unsigned long pdptr_bits = X86_CR4_PGE | X86_CR4_PSE |
				   X86_CR4_PAE | X86_CR4_SMEP;
	if (cr4 & CR4_RESERVED_BITS)
		return 1;

	if (!FUNC3(vcpu) && (cr4 & X86_CR4_OSXSAVE))
		return 1;

	if (!FUNC2(vcpu) && (cr4 & X86_CR4_SMEP))
		return 1;

	if (!FUNC0(vcpu) && (cr4 & X86_CR4_RDWRGSFS))
		return 1;

	if (FUNC4(vcpu)) {
		if (!(cr4 & X86_CR4_PAE))
			return 1;
	} else if (FUNC5(vcpu) && (cr4 & X86_CR4_PAE)
		   && ((cr4 ^ old_cr4) & pdptr_bits)
		   && !FUNC8(vcpu, vcpu->arch.cr3))
		return 1;

	if ((cr4 & X86_CR4_PCIDE) && !(old_cr4 & X86_CR4_PCIDE)) {
		if (!FUNC1(vcpu))
			return 1;

		/* PCID can not be enabled when cr3[11:0]!=000H or EFER.LMA=0 */
		if ((vcpu->arch.cr3 & X86_CR3_PCID_MASK) || !FUNC4(vcpu))
			return 1;
	}

	if (cr4 & X86_CR4_VMXE)
		return 1;
	kvm_x86_ops->set_cr4(vcpu, cr4);
	vcpu->arch.cr4 = cr4;
	vcpu->arch.mmu.base_role.cr4_pge = (cr4 & X86_CR4_PGE) && !tdp_enabled;
	FUNC6(vcpu);

	if ((cr4 ^ old_cr4) & X86_CR4_OSXSAVE)
		FUNC10(vcpu);

	return 0;
}