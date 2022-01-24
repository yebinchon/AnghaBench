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
struct TYPE_4__ {int /*<<< orphan*/  fpu_reload; } ;
struct TYPE_3__ {int /*<<< orphan*/  guest_fpu; } ;
struct kvm_vcpu {int /*<<< orphan*/  requests; TYPE_2__ stat; TYPE_1__ arch; scalar_t__ guest_fpu_loaded; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_DEACTIVATE_FPU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct kvm_vcpu *vcpu)
{
	FUNC2(vcpu);

	if (!vcpu->guest_fpu_loaded)
		return;

	vcpu->guest_fpu_loaded = 0;
	FUNC0(&vcpu->arch.guest_fpu);
	FUNC1();
	++vcpu->stat.fpu_reload;
	FUNC3(KVM_REQ_DEACTIVATE_FPU, &vcpu->requests);
}