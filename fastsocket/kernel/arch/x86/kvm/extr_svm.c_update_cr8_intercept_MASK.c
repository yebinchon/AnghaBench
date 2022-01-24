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
struct vcpu_svm {TYPE_2__* vmcb; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  intercept_cr_write; } ;
struct TYPE_4__ {TYPE_1__ control; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTERCEPT_CR8_MASK ; 
 int /*<<< orphan*/  VMCB_INTERCEPTS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct vcpu_svm* FUNC1 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC2(struct kvm_vcpu *vcpu, int tpr, int irr)
{
	struct vcpu_svm *svm = FUNC1(vcpu);

	if (irr == -1)
		return;

	if (tpr >= irr) {
		svm->vmcb->control.intercept_cr_write |= INTERCEPT_CR8_MASK;
		FUNC0(svm->vmcb, VMCB_INTERCEPTS);
	}
}