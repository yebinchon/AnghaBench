#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int int_state; } ;
struct TYPE_5__ {int rflags; } ;
struct vmcb {TYPE_2__ control; TYPE_1__ save; } ;
struct TYPE_7__ {int hflags; } ;
struct TYPE_8__ {TYPE_3__ arch; } ;
struct vcpu_svm {TYPE_4__ vcpu; struct vmcb* vmcb; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int HF_VINTR_MASK ; 
 int SVM_INTERRUPT_SHADOW_MASK ; 
 int X86_EFLAGS_IF ; 
 scalar_t__ FUNC0 (struct vcpu_svm*) ; 
 scalar_t__ FUNC1 (struct vcpu_svm*) ; 
 struct vcpu_svm* FUNC2 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC3(struct kvm_vcpu *vcpu)
{
	struct vcpu_svm *svm = FUNC2(vcpu);
	struct vmcb *vmcb = svm->vmcb;
	return (vmcb->save.rflags & X86_EFLAGS_IF) &&
		!(vmcb->control.int_state & SVM_INTERRUPT_SHADOW_MASK) &&
		FUNC0(svm) &&
		!(FUNC1(svm) && (svm->vcpu.arch.hflags & HF_VINTR_MASK));
}