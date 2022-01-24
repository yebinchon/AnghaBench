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
struct TYPE_6__ {scalar_t__ pending; } ;
struct TYPE_5__ {int /*<<< orphan*/  error_code; int /*<<< orphan*/  has_error_code; int /*<<< orphan*/  nr; scalar_t__ pending; } ;
struct TYPE_7__ {int nmi_injected; int nmi_pending; TYPE_2__ interrupt; TYPE_1__ exception; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* set_irq ) (struct kvm_vcpu*) ;scalar_t__ (* interrupt_allowed ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* set_nmi ) (struct kvm_vcpu*) ;scalar_t__ (* nmi_allowed ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* queue_exception ) (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct kvm_vcpu *vcpu)
{
	/* try to reinject previous events if any */
	if (vcpu->arch.exception.pending) {
		FUNC10(vcpu->arch.exception.nr,
					vcpu->arch.exception.has_error_code,
					vcpu->arch.exception.error_code);
		kvm_x86_ops->queue_exception(vcpu, vcpu->arch.exception.nr,
					  vcpu->arch.exception.has_error_code,
					  vcpu->arch.exception.error_code);
		return;
	}

	if (vcpu->arch.nmi_injected) {
		kvm_x86_ops->set_nmi(vcpu);
		return;
	}

	if (vcpu->arch.interrupt.pending) {
		kvm_x86_ops->set_irq(vcpu);
		return;
	}

	/* try to inject new event if pending */
	if (vcpu->arch.nmi_pending) {
		if (kvm_x86_ops->nmi_allowed(vcpu)) {
			vcpu->arch.nmi_pending = false;
			vcpu->arch.nmi_injected = true;
			kvm_x86_ops->set_nmi(vcpu);
		}
	} else if (FUNC1(vcpu)) {
		if (kvm_x86_ops->interrupt_allowed(vcpu)) {
			FUNC2(vcpu, FUNC0(vcpu),
					    false);
			kvm_x86_ops->set_irq(vcpu);
		}
	}
}