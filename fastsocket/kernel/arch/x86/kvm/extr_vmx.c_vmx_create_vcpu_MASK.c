#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kvm_vcpu {int cpu; } ;
struct vcpu_vmx {struct kvm_vcpu vcpu; int /*<<< orphan*/  guest_msrs; int /*<<< orphan*/  vmcs; } ;
struct TYPE_2__ {scalar_t__ ept_identity_map_addr; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct kvm_vcpu* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ VMX_EPT_IDENTITY_PAGETABLE_ADDR ; 
 scalar_t__ FUNC1 (struct kvm*) ; 
 scalar_t__ FUNC2 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct vcpu_vmx*) ; 
 scalar_t__ enable_ept ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vcpu_vmx*) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct vcpu_vmx*) ; 
 struct vcpu_vmx* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvm_vcpu_cache ; 
 int FUNC13 (struct kvm_vcpu*,struct kvm*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct kvm_vcpu*) ; 
 int FUNC20 (struct vcpu_vmx*) ; 

__attribute__((used)) static struct kvm_vcpu *FUNC21(struct kvm *kvm, unsigned int id)
{
	int err;
	struct vcpu_vmx *vmx = FUNC12(kvm_vcpu_cache, GFP_KERNEL);
	int cpu;

	if (!vmx)
		return FUNC0(-ENOMEM);

	FUNC4(vmx);

	err = FUNC13(&vmx->vcpu, kvm, id);
	if (err)
		goto free_vcpu;

	vmx->guest_msrs = FUNC10(PAGE_SIZE, GFP_KERNEL);
	if (!vmx->guest_msrs) {
		err = -ENOMEM;
		goto uninit_vcpu;
	}

	vmx->vmcs = FUNC3();
	if (!vmx->vmcs)
		goto free_msrs;

	FUNC17(vmx->vmcs);

	cpu = FUNC7();
	FUNC18(&vmx->vcpu, cpu);
	vmx->vcpu.cpu = cpu;
	err = FUNC20(vmx);
	FUNC19(&vmx->vcpu);
	FUNC15();
	if (err)
		goto free_vmcs;
	if (FUNC16(kvm))
		if (FUNC1(kvm) != 0)
			goto free_vmcs;

	if (enable_ept) {
		if (!kvm->arch.ept_identity_map_addr)
			kvm->arch.ept_identity_map_addr =
				VMX_EPT_IDENTITY_PAGETABLE_ADDR;
		err = -ENOMEM;
		if (FUNC2(kvm) != 0)
			goto free_vmcs;
		if (!FUNC8(kvm))
			goto free_vmcs;
	}

	return &vmx->vcpu;

free_vmcs:
	FUNC5(vmx->vmcs);
free_msrs:
	FUNC9(vmx->guest_msrs);
uninit_vcpu:
	FUNC14(&vmx->vcpu);
free_vcpu:
	FUNC6(vmx);
	FUNC11(kvm_vcpu_cache, vmx);
	return FUNC0(err);
}