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
typedef  scalar_t__ u8 ;
struct TYPE_6__ {int /*<<< orphan*/  kvm; struct kvm_run* run; } ;
struct vcpu_svm {TYPE_3__ vcpu; TYPE_2__* vmcb; } ;
struct kvm_run {int /*<<< orphan*/  exit_reason; } ;
struct TYPE_4__ {int /*<<< orphan*/  intercept_cr_write; } ;
struct TYPE_5__ {TYPE_1__ control; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTERCEPT_CR8_MASK ; 
 int /*<<< orphan*/  KVM_EXIT_SET_TPR ; 
 int /*<<< orphan*/  VMCB_INTERCEPTS ; 
 int FUNC0 (struct vcpu_svm*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct vcpu_svm *svm)
{
	struct kvm_run *kvm_run = svm->vcpu.run;
	int r;

	u8 cr8_prev = FUNC2(&svm->vcpu);
	/* instruction emulation calls kvm_set_cr8() */
	r = FUNC0(svm);
	if (FUNC1(svm->vcpu.kvm)) {
		svm->vmcb->control.intercept_cr_write &= ~INTERCEPT_CR8_MASK;
		FUNC3(svm->vmcb, VMCB_INTERCEPTS);
		return r;
	}
	if (cr8_prev <= FUNC2(&svm->vcpu))
		return r;
	kvm_run->exit_reason = KVM_EXIT_SET_TPR;
	return 0;
}