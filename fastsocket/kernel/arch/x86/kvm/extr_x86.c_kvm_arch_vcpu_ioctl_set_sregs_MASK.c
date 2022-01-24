#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ cr3; scalar_t__ shadow_efer; scalar_t__ cr0; int /*<<< orphan*/  mp_state; int /*<<< orphan*/  cr2; } ;
struct kvm_vcpu {TYPE_3__ arch; int /*<<< orphan*/  kvm; } ;
struct TYPE_10__ {int selector; int base; } ;
struct TYPE_7__ {int /*<<< orphan*/  base; int /*<<< orphan*/  limit; } ;
struct TYPE_6__ {int /*<<< orphan*/  base; int /*<<< orphan*/  limit; } ;
struct kvm_sregs {int cr4; scalar_t__ cr3; scalar_t__ efer; scalar_t__ cr0; TYPE_5__ cs; TYPE_5__ ldt; TYPE_5__ tr; TYPE_5__ ss; TYPE_5__ gs; TYPE_5__ fs; TYPE_5__ es; TYPE_5__ ds; scalar_t__ interrupt_bitmap; int /*<<< orphan*/  apic_base; int /*<<< orphan*/  cr8; int /*<<< orphan*/  cr2; TYPE_2__ gdt; TYPE_1__ idt; } ;
struct descriptor_table {int /*<<< orphan*/  base; int /*<<< orphan*/  limit; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* set_cr4 ) (struct kvm_vcpu*,int) ;int /*<<< orphan*/  (* set_cr0 ) (struct kvm_vcpu*,scalar_t__) ;int /*<<< orphan*/  (* set_efer ) (struct kvm_vcpu*,scalar_t__) ;int /*<<< orphan*/  (* set_gdt ) (struct kvm_vcpu*,struct descriptor_table*) ;int /*<<< orphan*/  (* set_idt ) (struct kvm_vcpu*,struct descriptor_table*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KVM_MP_STATE_RUNNABLE ; 
 int /*<<< orphan*/  VCPU_SREG_CS ; 
 int /*<<< orphan*/  VCPU_SREG_DS ; 
 int /*<<< orphan*/  VCPU_SREG_ES ; 
 int /*<<< orphan*/  VCPU_SREG_FS ; 
 int /*<<< orphan*/  VCPU_SREG_GS ; 
 int /*<<< orphan*/  VCPU_SREG_LDTR ; 
 int /*<<< orphan*/  VCPU_SREG_SS ; 
 int /*<<< orphan*/  VCPU_SREG_TR ; 
 int /*<<< orphan*/  X86_CR0_PE ; 
 int X86_CR4_OSXSAVE ; 
 int FUNC0 (unsigned long const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,int,int) ; 
 scalar_t__ FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct kvm_vcpu*) ; 
 int FUNC11 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct kvm_vcpu*) ; 
 TYPE_4__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC16 (struct kvm_vcpu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (char*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct kvm_vcpu*,struct descriptor_table*) ; 
 int /*<<< orphan*/  FUNC19 (struct kvm_vcpu*,struct descriptor_table*) ; 
 int /*<<< orphan*/  FUNC20 (struct kvm_vcpu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (struct kvm_vcpu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC24 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC25 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC26 (struct kvm_vcpu*) ; 

int FUNC27(struct kvm_vcpu *vcpu,
				  struct kvm_sregs *sregs)
{
	int mmu_reset_needed = 0;
	int pending_vec, max_bits;
	int ret = 0;
	struct descriptor_table dt;

	FUNC25(vcpu);

	if (!FUNC1(vcpu) && (sregs->cr4 & X86_CR4_OSXSAVE)) {
		ret = -EINVAL;
		goto out;
	}

	dt.limit = sregs->idt.limit;
	dt.base = sregs->idt.base;
	kvm_x86_ops->set_idt(vcpu, &dt);
	dt.limit = sregs->gdt.limit;
	dt.base = sregs->gdt.base;
	kvm_x86_ops->set_gdt(vcpu, &dt);

	vcpu->arch.cr2 = sregs->cr2;
	mmu_reset_needed |= vcpu->arch.cr3 != sregs->cr3;
	vcpu->arch.cr3 = sregs->cr3;

	FUNC13(vcpu, sregs->cr8);

	mmu_reset_needed |= vcpu->arch.shadow_efer != sregs->efer;
	kvm_x86_ops->set_efer(vcpu, sregs->efer);
	FUNC12(vcpu, sregs->apic_base);


	mmu_reset_needed |= FUNC8(vcpu) != sregs->cr0;
	kvm_x86_ops->set_cr0(vcpu, sregs->cr0);
	vcpu->arch.cr0 = sregs->cr0;

	mmu_reset_needed |= FUNC10(vcpu) != sregs->cr4;
	kvm_x86_ops->set_cr4(vcpu, sregs->cr4);
	if (sregs->cr4 & X86_CR4_OSXSAVE)
		FUNC23(vcpu);
	if (!FUNC3(vcpu) && FUNC4(vcpu))
		FUNC16(vcpu, vcpu->arch.cr3);

	if (mmu_reset_needed)
		FUNC5(vcpu);

	max_bits = (sizeof sregs->interrupt_bitmap) << 3;
	pending_vec = FUNC0(
		(const unsigned long *)sregs->interrupt_bitmap, max_bits);
	if (pending_vec < max_bits) {
		FUNC7(vcpu, pending_vec, false);
		FUNC17("Set back pending irq %d\n", pending_vec);
		if (FUNC2(vcpu->kvm))
			FUNC6(vcpu->kvm);
	}

	FUNC14(vcpu, &sregs->cs, VCPU_SREG_CS);
	FUNC14(vcpu, &sregs->ds, VCPU_SREG_DS);
	FUNC14(vcpu, &sregs->es, VCPU_SREG_ES);
	FUNC14(vcpu, &sregs->fs, VCPU_SREG_FS);
	FUNC14(vcpu, &sregs->gs, VCPU_SREG_GS);
	FUNC14(vcpu, &sregs->ss, VCPU_SREG_SS);

	FUNC14(vcpu, &sregs->tr, VCPU_SREG_TR);
	FUNC14(vcpu, &sregs->ldt, VCPU_SREG_LDTR);

	FUNC24(vcpu);

	/* Older userspace won't unhalt the vcpu on reset. */
	if (FUNC15(vcpu) && FUNC11(vcpu) == 0xfff0 &&
	    sregs->cs.selector == 0xf000 && sregs->cs.base == 0xffff0000 &&
	    !(FUNC9(vcpu, X86_CR0_PE)))
		vcpu->arch.mp_state = KVM_MP_STATE_RUNNABLE;

out:
	FUNC26(vcpu);

	return ret;
}