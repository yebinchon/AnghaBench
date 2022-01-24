#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vcpu_svm {TYPE_3__* vmcb; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_5__ {unsigned long cr3; } ;
struct TYPE_4__ {unsigned long nested_cr3; } ;
struct TYPE_6__ {TYPE_2__ save; TYPE_1__ control; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMCB_CR ; 
 int /*<<< orphan*/  VMCB_NPT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ npt_enabled ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 struct vcpu_svm* FUNC2 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu, unsigned long root)
{
	struct vcpu_svm *svm = FUNC2(vcpu);

	if (npt_enabled) {
		svm->vmcb->control.nested_cr3 = root;
		FUNC0(svm->vmcb, VMCB_NPT);
		FUNC1(vcpu);
		return;
	}

	svm->vmcb->save.cr3 = root;
	FUNC0(svm->vmcb, VMCB_CR);
	FUNC1(vcpu);
}