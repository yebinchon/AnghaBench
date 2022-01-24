#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_11__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_23__ {int sipi_vector; int cr0; TYPE_3__* apic; int /*<<< orphan*/ * regs; } ;
struct TYPE_25__ {TYPE_5__ arch; TYPE_11__* kvm; } ;
struct TYPE_20__ {scalar_t__ vm86_active; } ;
struct vcpu_vmx {int vpid; scalar_t__ emulation_required; TYPE_7__ vcpu; scalar_t__ soft_vnmi_blocked; TYPE_2__ rmode; } ;
struct TYPE_19__ {int regs_avail; } ;
struct kvm_vcpu {int /*<<< orphan*/  srcu_idx; TYPE_6__* kvm; TYPE_1__ arch; } ;
struct TYPE_24__ {int /*<<< orphan*/  srcu; } ;
struct TYPE_22__ {int /*<<< orphan*/  apic_access_page; } ;
struct TYPE_21__ {int /*<<< orphan*/  regs_page; } ;
struct TYPE_18__ {TYPE_4__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_ACCESS_ADDR ; 
 int GUEST_ACTIVITY_ACTIVE ; 
 int /*<<< orphan*/  GUEST_ACTIVITY_STATE ; 
 int /*<<< orphan*/  GUEST_CS_BASE ; 
 int /*<<< orphan*/  GUEST_CS_SELECTOR ; 
 int /*<<< orphan*/  GUEST_DR7 ; 
 int /*<<< orphan*/  GUEST_GDTR_BASE ; 
 int /*<<< orphan*/  GUEST_GDTR_LIMIT ; 
 int /*<<< orphan*/  GUEST_IA32_DEBUGCTL ; 
 int /*<<< orphan*/  GUEST_IDTR_BASE ; 
 int /*<<< orphan*/  GUEST_IDTR_LIMIT ; 
 int /*<<< orphan*/  GUEST_INTERRUPTIBILITY_INFO ; 
 int /*<<< orphan*/  GUEST_LDTR_AR_BYTES ; 
 int /*<<< orphan*/  GUEST_LDTR_BASE ; 
 int /*<<< orphan*/  GUEST_LDTR_LIMIT ; 
 int /*<<< orphan*/  GUEST_LDTR_SELECTOR ; 
 int /*<<< orphan*/  GUEST_PENDING_DBG_EXCEPTIONS ; 
 int /*<<< orphan*/  GUEST_RFLAGS ; 
 int /*<<< orphan*/  GUEST_SYSENTER_CS ; 
 int /*<<< orphan*/  GUEST_SYSENTER_EIP ; 
 int /*<<< orphan*/  GUEST_SYSENTER_ESP ; 
 int /*<<< orphan*/  GUEST_TR_AR_BYTES ; 
 int /*<<< orphan*/  GUEST_TR_BASE ; 
 int /*<<< orphan*/  GUEST_TR_LIMIT ; 
 int /*<<< orphan*/  GUEST_TR_SELECTOR ; 
 int MSR_IA32_APICBASE_BSP ; 
 int MSR_IA32_APICBASE_ENABLE ; 
 int /*<<< orphan*/  TPR_THRESHOLD ; 
 size_t VCPU_REGS_RDX ; 
 int VCPU_REGS_RIP ; 
 int VCPU_REGS_RSP ; 
 int /*<<< orphan*/  VCPU_SREG_CS ; 
 int /*<<< orphan*/  VCPU_SREG_DS ; 
 int /*<<< orphan*/  VCPU_SREG_ES ; 
 int /*<<< orphan*/  VCPU_SREG_FS ; 
 int /*<<< orphan*/  VCPU_SREG_GS ; 
 int /*<<< orphan*/  VCPU_SREG_SS ; 
 int /*<<< orphan*/  VIRTUAL_APIC_PAGE_ADDR ; 
 int /*<<< orphan*/  VIRTUAL_PROCESSOR_ID ; 
 int /*<<< orphan*/  VM_ENTRY_INTR_INFO_FIELD ; 
 int X86_CR0_CD ; 
 int X86_CR0_ET ; 
 int X86_CR0_NW ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vcpu_vmx*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct vcpu_vmx* FUNC14 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_7__*) ; 
 scalar_t__ FUNC16 (TYPE_11__*) ; 
 scalar_t__ FUNC17 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct vcpu_vmx*) ; 

__attribute__((used)) static int FUNC27(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC14(vcpu);
	u64 msr;
	int ret;

	vcpu->arch.regs_avail = ~((1 << VCPU_REGS_RIP) | (1 << VCPU_REGS_RSP));

	vmx->rmode.vm86_active = 0;

	vmx->soft_vnmi_blocked = 0;

	vmx->vcpu.arch.regs[VCPU_REGS_RDX] = FUNC2();
	FUNC7(&vmx->vcpu, 0);
	msr = 0xfee00000 | MSR_IA32_APICBASE_ENABLE;
	if (FUNC8(&vmx->vcpu))
		msr |= MSR_IA32_APICBASE_BSP;
	FUNC6(&vmx->vcpu, msr);

	FUNC1(&vmx->vcpu);

	FUNC10(VCPU_SREG_CS);
	/*
	 * GUEST_CS_BASE should really be 0xffff0000, but VT vm86 mode
	 * insists on having GUEST_CS_BASE == GUEST_CS_SELECTOR << 4.  Sigh.
	 */
	if (FUNC8(&vmx->vcpu)) {
		FUNC18(GUEST_CS_SELECTOR, 0xf000);
		FUNC21(GUEST_CS_BASE, 0x000f0000);
	} else {
		FUNC18(GUEST_CS_SELECTOR, vmx->vcpu.arch.sipi_vector << 8);
		FUNC21(GUEST_CS_BASE, vmx->vcpu.arch.sipi_vector << 12);
	}

	FUNC10(VCPU_SREG_DS);
	FUNC10(VCPU_SREG_ES);
	FUNC10(VCPU_SREG_FS);
	FUNC10(VCPU_SREG_GS);
	FUNC10(VCPU_SREG_SS);

	FUNC18(GUEST_TR_SELECTOR, 0);
	FUNC21(GUEST_TR_BASE, 0);
	FUNC19(GUEST_TR_LIMIT, 0xffff);
	FUNC19(GUEST_TR_AR_BYTES, 0x008b);

	FUNC18(GUEST_LDTR_SELECTOR, 0);
	FUNC21(GUEST_LDTR_BASE, 0);
	FUNC19(GUEST_LDTR_LIMIT, 0xffff);
	FUNC19(GUEST_LDTR_AR_BYTES, 0x00082);

	FUNC19(GUEST_SYSENTER_CS, 0);
	FUNC21(GUEST_SYSENTER_ESP, 0);
	FUNC21(GUEST_SYSENTER_EIP, 0);

	FUNC21(GUEST_RFLAGS, 0x02);
	if (FUNC8(&vmx->vcpu))
		FUNC5(vcpu, 0xfff0);
	else
		FUNC5(vcpu, 0);
	FUNC4(vcpu, VCPU_REGS_RSP, 0);

	FUNC21(GUEST_DR7, 0x400);

	FUNC21(GUEST_GDTR_BASE, 0);
	FUNC19(GUEST_GDTR_LIMIT, 0xffff);

	FUNC21(GUEST_IDTR_BASE, 0);
	FUNC19(GUEST_IDTR_LIMIT, 0xffff);

	FUNC19(GUEST_ACTIVITY_STATE, GUEST_ACTIVITY_ACTIVE);
	FUNC19(GUEST_INTERRUPTIBILITY_INFO, 0);
	FUNC19(GUEST_PENDING_DBG_EXCEPTIONS, 0);

	/* Special registers */
	FUNC20(GUEST_IA32_DEBUGCTL, 0);

	FUNC11(vmx);

	FUNC19(VM_ENTRY_INTR_INFO_FIELD, 0);  /* 22.2.1 */

	if (FUNC0()) {
		FUNC20(VIRTUAL_APIC_PAGE_ADDR, 0);
		if (FUNC16(vmx->vcpu.kvm))
			FUNC20(VIRTUAL_APIC_PAGE_ADDR,
				FUNC9(vmx->vcpu.arch.apic->regs_page));
		FUNC19(TPR_THRESHOLD, 0);
	}

	if (FUNC17(vmx->vcpu.kvm))
		FUNC20(APIC_ACCESS_ADDR,
			     FUNC9(vmx->vcpu.kvm->arch.apic_access_page));

	if (vmx->vpid != 0)
		FUNC18(VIRTUAL_PROCESSOR_ID, vmx->vpid);

	vmx->vcpu.arch.cr0 = X86_CR0_NW | X86_CR0_CD | X86_CR0_ET;
	vcpu->srcu_idx = FUNC12(&vcpu->kvm->srcu);
	FUNC23(&vmx->vcpu, FUNC3(vcpu)); /* enter rmode */
	FUNC13(&vcpu->kvm->srcu, vcpu->srcu_idx);
	FUNC24(&vmx->vcpu, 0);
	FUNC25(&vmx->vcpu, 0);
	FUNC22(&vmx->vcpu);
	FUNC15(&vmx->vcpu);

	FUNC26(vmx);

	ret = 0;

	/* HACK: Don't enable emulation on guest boot/reset */
	vmx->emulation_required = 0;

	return ret;
}