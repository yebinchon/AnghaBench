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
struct TYPE_4__ {int apic_base; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {void* msrpm; void* hsave; } ;
struct vcpu_svm {int vmcb_pa; struct kvm_vcpu vcpu; scalar_t__ asid_generation; void* vmcb; TYPE_1__ nested; void* msrpm; int /*<<< orphan*/  tsc_ratio; } ;
struct page {int dummy; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct kvm_vcpu* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MSRPM_ALLOC_ORDER ; 
 int MSR_IA32_APICBASE_BSP ; 
 int MSR_IA32_APICBASE_ENABLE ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  TSC_RATIO_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int /*<<< orphan*/ ) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct vcpu_svm*) ; 
 struct vcpu_svm* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kvm_vcpu_cache ; 
 int FUNC10 (struct kvm_vcpu*,struct kvm*,unsigned int) ; 
 scalar_t__ FUNC11 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*) ; 
 void* FUNC13 (struct page*) ; 
 int FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 

__attribute__((used)) static struct kvm_vcpu *FUNC16(struct kvm *kvm, unsigned int id)
{
	struct vcpu_svm *svm;
	struct page *page;
	struct page *msrpm_pages;
	struct page *hsave_page;
	struct page *nested_msrpm_pages;
	int err;

	svm = FUNC9(kvm_vcpu_cache, GFP_KERNEL);
	if (!svm) {
		err = -ENOMEM;
		goto out;
	}

	svm->tsc_ratio = TSC_RATIO_DEFAULT;

	err = FUNC10(&svm->vcpu, kvm, id);
	if (err)
		goto free_svm;

	err = -ENOMEM;
	page = FUNC3(GFP_KERNEL);
	if (!page)
		goto uninit;

	msrpm_pages = FUNC4(GFP_KERNEL, MSRPM_ALLOC_ORDER);
	if (!msrpm_pages)
		goto free_page1;

	nested_msrpm_pages = FUNC4(GFP_KERNEL, MSRPM_ALLOC_ORDER);
	if (!nested_msrpm_pages)
		goto free_page2;

	hsave_page = FUNC3(GFP_KERNEL);
	if (!hsave_page)
		goto free_page3;

	svm->nested.hsave = FUNC13(hsave_page);

	svm->msrpm = FUNC13(msrpm_pages);
	FUNC15(svm->msrpm);

	svm->nested.msrpm = FUNC13(nested_msrpm_pages);

	svm->vmcb = FUNC13(page);
	FUNC5(svm->vmcb);
	svm->vmcb_pa = FUNC14(page) << PAGE_SHIFT;
	svm->asid_generation = 0;
	FUNC7(svm);

	FUNC6(&svm->vcpu);
	svm->vcpu.arch.apic_base = 0xfee00000 | MSR_IA32_APICBASE_ENABLE;
	if (FUNC11(&svm->vcpu))
		svm->vcpu.arch.apic_base |= MSR_IA32_APICBASE_BSP;

	return &svm->vcpu;

free_page3:
	FUNC2(nested_msrpm_pages, MSRPM_ALLOC_ORDER);
free_page2:
	FUNC2(msrpm_pages, MSRPM_ALLOC_ORDER);
free_page1:
	FUNC1(page);
uninit:
	FUNC12(&svm->vcpu);
free_svm:
	FUNC8(kvm_vcpu_cache, svm);
out:
	return FUNC0(err);
}