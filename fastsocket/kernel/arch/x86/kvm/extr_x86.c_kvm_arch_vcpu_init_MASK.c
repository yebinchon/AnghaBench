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
typedef  int /*<<< orphan*/  u64 ;
struct page {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  root_hpa; } ;
struct TYPE_4__ {int mcg_cap; int pv_time_enabled; scalar_t__ pio_data; int /*<<< orphan*/  mce_banks; int /*<<< orphan*/  mp_state; TYPE_1__ mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; struct kvm* kvm; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  INVALID_PAGE ; 
 int KVM_MAX_MCE_BANKS ; 
 int /*<<< orphan*/  KVM_MP_STATE_RUNNABLE ; 
 int /*<<< orphan*/  KVM_MP_STATE_UNINITIALIZED ; 
 int __GFP_ZERO ; 
 struct page* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (struct kvm*) ; 
 int FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC10 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  max_tsc_khz ; 
 scalar_t__ FUNC12 (struct page*) ; 

int FUNC13(struct kvm_vcpu *vcpu)
{
	struct page *page;
	struct kvm *kvm;
	int r;

	FUNC0(vcpu->kvm == NULL);
	kvm = vcpu->kvm;

	vcpu->arch.mmu.root_hpa = INVALID_PAGE;
	if (!FUNC3(kvm) || FUNC10(vcpu))
		vcpu->arch.mp_state = KVM_MP_STATE_RUNNABLE;
	else
		vcpu->arch.mp_state = KVM_MP_STATE_UNINITIALIZED;

	page = FUNC1(GFP_KERNEL | __GFP_ZERO);
	if (!page) {
		r = -ENOMEM;
		goto fail;
	}
	vcpu->arch.pio_data = FUNC12(page);

	FUNC6(vcpu, max_tsc_khz);

	r = FUNC7(vcpu);
	if (r < 0)
		goto fail_free_pio_data;

	if (FUNC3(kvm)) {
		r = FUNC4(vcpu);
		if (r < 0)
			goto fail_mmu_destroy;
	}

	vcpu->arch.mce_banks = FUNC11(KVM_MAX_MCE_BANKS * sizeof(u64) * 4,
				       GFP_KERNEL);
	if (!vcpu->arch.mce_banks) {
		r = -ENOMEM;
		goto fail_free_lapic;
	}
	vcpu->arch.mcg_cap = KVM_MAX_MCE_BANKS;

	vcpu->arch.pv_time_enabled = false;
	FUNC9(vcpu);

	return 0;
fail_free_lapic:
	FUNC5(vcpu);
fail_mmu_destroy:
	FUNC8(vcpu);
fail_free_pio_data:
	FUNC2((unsigned long)vcpu->arch.pio_data);
fail:
	return r;
}