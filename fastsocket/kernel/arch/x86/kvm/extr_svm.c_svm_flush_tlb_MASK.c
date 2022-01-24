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
struct vcpu_svm {int /*<<< orphan*/  asid_generation; TYPE_2__* vmcb; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  tlb_ctl; } ;
struct TYPE_4__ {TYPE_1__ control; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVM_FEATURE_FLUSH_ASID ; 
 int /*<<< orphan*/  TLB_CONTROL_FLUSH_ASID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct vcpu_svm* FUNC1 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC2(struct kvm_vcpu *vcpu)
{
	struct vcpu_svm *svm = FUNC1(vcpu);

	if (FUNC0(SVM_FEATURE_FLUSH_ASID))
		svm->vmcb->control.tlb_ctl = TLB_CONTROL_FLUSH_ASID;
	else
		svm->asid_generation--;
}