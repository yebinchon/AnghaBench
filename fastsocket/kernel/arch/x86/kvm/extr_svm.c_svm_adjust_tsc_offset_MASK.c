#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* hsave; } ;
struct vcpu_svm {TYPE_5__* vmcb; TYPE_3__ nested; } ;
struct kvm_vcpu {int /*<<< orphan*/  vcpu_id; } ;
typedef  scalar_t__ s64 ;
struct TYPE_9__ {scalar_t__ tsc_offset; } ;
struct TYPE_10__ {TYPE_4__ control; } ;
struct TYPE_6__ {int /*<<< orphan*/  tsc_offset; } ;
struct TYPE_7__ {TYPE_1__ control; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMCB_INTERCEPTS ; 
 scalar_t__ FUNC0 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*,scalar_t__) ; 
 struct vcpu_svm* FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct kvm_vcpu *vcpu, s64 adjustment, bool host)
{
	struct vcpu_svm *svm = FUNC3(vcpu);
	bool negative = false;

	if (adjustment < 0) {
		adjustment = -adjustment;
		negative = true;
	}
	if (host)
		adjustment = FUNC2(vcpu, adjustment);

	if (negative) {
		adjustment = -adjustment;
	}

	svm->vmcb->control.tsc_offset += adjustment;
	FUNC1(svm->vmcb, VMCB_INTERCEPTS);
	if (FUNC0(svm))
		svm->nested.hsave->control.tsc_offset += adjustment;
	else
		FUNC4(vcpu->vcpu_id,
				svm->vmcb->control.tsc_offset - adjustment,
				svm->vmcb->control.tsc_offset);
}