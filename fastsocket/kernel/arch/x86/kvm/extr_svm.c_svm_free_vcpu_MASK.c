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
struct TYPE_2__ {int /*<<< orphan*/  msrpm; int /*<<< orphan*/  hsave; } ;
struct vcpu_svm {int vmcb_pa; TYPE_1__ nested; int /*<<< orphan*/  msrpm; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSRPM_ALLOC_ORDER ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vcpu_svm*) ; 
 int /*<<< orphan*/  kvm_vcpu_cache ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct vcpu_svm* FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct kvm_vcpu *vcpu)
{
	struct vcpu_svm *svm = FUNC5(vcpu);

	FUNC0(FUNC4(svm->vmcb_pa >> PAGE_SHIFT));
	FUNC1(FUNC6(svm->msrpm), MSRPM_ALLOC_ORDER);
	FUNC0(FUNC6(svm->nested.hsave));
	FUNC1(FUNC6(svm->nested.msrpm), MSRPM_ALLOC_ORDER);
	FUNC3(vcpu);
	FUNC2(kvm_vcpu_cache, svm);
}