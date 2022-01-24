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
struct TYPE_3__ {scalar_t__ mp_state; } ;
struct kvm_vcpu {int mmio_read_completed; scalar_t__ sigset_active; scalar_t__ mmio_needed; int /*<<< orphan*/  mmio_data; int /*<<< orphan*/  requests; TYPE_1__ arch; int /*<<< orphan*/  sigset; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct kvm_run {TYPE_2__ mmio; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ KVM_MP_STATE_UNINITIALIZED ; 
 int /*<<< orphan*/  KVM_REQ_UNHALT ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int FUNC0 (struct kvm_vcpu*,struct kvm_run*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 

int FUNC9(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
{
	int r;
	sigset_t sigsaved;

	FUNC7(vcpu);

	if (vcpu->sigset_active)
		FUNC5(SIG_SETMASK, &vcpu->sigset, &sigsaved);

	if (FUNC6(vcpu->arch.mp_state == KVM_MP_STATE_UNINITIALIZED)) {
		FUNC3(vcpu);
		FUNC1(KVM_REQ_UNHALT, &vcpu->requests);
		r = -EAGAIN;
		goto out;
	}

	if (vcpu->mmio_needed) {
		FUNC4(vcpu->mmio_data, kvm_run->mmio.data, 8);
		FUNC2(vcpu);
		vcpu->mmio_read_completed = 1;
		vcpu->mmio_needed = 0;
	}
	r = FUNC0(vcpu, kvm_run);
out:
	if (vcpu->sigset_active)
		FUNC5(SIG_SETMASK, &sigsaved, NULL);

	FUNC8(vcpu);
	return r;
}