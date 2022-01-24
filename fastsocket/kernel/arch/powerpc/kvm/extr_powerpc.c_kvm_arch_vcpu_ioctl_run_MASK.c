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
struct TYPE_2__ {scalar_t__ dcr_needed; int /*<<< orphan*/  dcr_is_write; } ;
struct kvm_vcpu {scalar_t__ sigset_active; TYPE_1__ arch; scalar_t__ mmio_needed; int /*<<< orphan*/  mmio_is_write; int /*<<< orphan*/  sigset; } ;
struct kvm_run {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIG_SETMASK ; 
 int FUNC0 (struct kvm_run*,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,struct kvm_run*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,struct kvm_run*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*) ; 

int FUNC11(struct kvm_vcpu *vcpu, struct kvm_run *run)
{
	int r;
	sigset_t sigsaved;

	FUNC9(vcpu);

	if (vcpu->sigset_active)
		FUNC8(SIG_SETMASK, &vcpu->sigset, &sigsaved);

	if (vcpu->mmio_needed) {
		if (!vcpu->mmio_is_write)
			FUNC4(vcpu, run);
		vcpu->mmio_needed = 0;
	} else if (vcpu->arch.dcr_needed) {
		if (!vcpu->arch.dcr_is_write)
			FUNC3(vcpu, run);
		vcpu->arch.dcr_needed = 0;
	}

	FUNC5(vcpu);

	FUNC6();
	FUNC1();
	r = FUNC0(run, vcpu);
	FUNC2();
	FUNC7();

	if (vcpu->sigset_active)
		FUNC8(SIG_SETMASK, &sigsaved, NULL);

	FUNC10(vcpu);

	return r;
}