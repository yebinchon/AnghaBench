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
struct TYPE_3__ {int vmm_tr_slot; int vm_tr_slot; } ;
struct kvm_vcpu {TYPE_1__ arch; struct kvm* kvm; } ;
struct TYPE_4__ {scalar_t__ is_sn2; int /*<<< orphan*/  vm_base; } ;
struct kvm {TYPE_2__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_VMM_BASE ; 
 int /*<<< orphan*/  KVM_VMM_SHIFT ; 
 int /*<<< orphan*/  KVM_VM_DATA_BASE ; 
 int /*<<< orphan*/  KVM_VM_DATA_SHIFT ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  kvm_vmm_base ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct kvm_vcpu *vcpu)
{
	unsigned long pte;
	struct kvm *kvm = vcpu->kvm;
	int r;

	/*Insert a pair of tr to map vmm*/
	pte = FUNC4(FUNC3(FUNC0(kvm_vmm_base), PAGE_KERNEL));
	r = FUNC1(0x3, KVM_VMM_BASE, pte, KVM_VMM_SHIFT);
	if (r < 0)
		goto out;
	vcpu->arch.vmm_tr_slot = r;
	/*Insert a pairt of tr to map data of vm*/
	pte = FUNC4(FUNC3(FUNC0(kvm->arch.vm_base), PAGE_KERNEL));
	r = FUNC1(0x3, KVM_VM_DATA_BASE,
					pte, KVM_VM_DATA_SHIFT);
	if (r < 0)
		goto out;
	vcpu->arch.vm_tr_slot = r;

#if defined(CONFIG_IA64_SGI_SN2) || defined(CONFIG_IA64_GENERIC)
	if (kvm->arch.is_sn2) {
		r = kvm_sn2_setup_mappings(vcpu);
		if (r < 0)
			goto out;
	}
#endif

	r = 0;
out:
	return r;
}