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
typedef  union context {int dummy; } context ;
struct TYPE_4__ {int launched; } ;
struct kvm_vcpu {TYPE_2__* kvm; int /*<<< orphan*/  requests; TYPE_1__ arch; } ;
struct kvm_run {int /*<<< orphan*/  exit_reason; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* tramp_entry ) (union context*,union context*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  srcu; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  KVM_EXIT_FAIL_ENTRY ; 
 int /*<<< orphan*/  KVM_EXIT_INTR ; 
 int /*<<< orphan*/  KVM_REQ_KICK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 union context* FUNC2 (struct kvm_vcpu*) ; 
 union context* FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct kvm_run*,struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int FUNC9 (struct kvm_vcpu*) ; 
 TYPE_3__* kvm_vmm_info ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (union context*,union context*) ; 

__attribute__((used)) static int FUNC20(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
{
	union context *host_ctx, *guest_ctx;
	int r, idx;

	idx = FUNC17(&vcpu->kvm->srcu);

again:
	if (FUNC16(current)) {
		r = -EINTR;
		kvm_run->exit_reason = KVM_EXIT_INTR;
		goto out;
	}

	FUNC13();
	FUNC10();

	/*Get host and guest context with guest address space.*/
	host_ctx = FUNC3(vcpu);
	guest_ctx = FUNC2(vcpu);

	FUNC1(KVM_REQ_KICK, &vcpu->requests);

	r = FUNC9(vcpu);
	if (r < 0)
		goto vcpu_run_fail;

	FUNC18(&vcpu->kvm->srcu, idx);
	FUNC4();

	/*
	 * Transition to the guest
	 */
	kvm_vmm_info->tramp_entry(host_ctx, guest_ctx);

	FUNC8(vcpu);

	vcpu->arch.launched = 1;
	FUNC15(KVM_REQ_KICK, &vcpu->requests);
	FUNC11();

	/*
	 * We must have an instruction between local_irq_enable() and
	 * kvm_guest_exit(), so the timer interrupt isn't delayed by
	 * the interrupt shadow.  The stat.exits increment will do nicely.
	 * But we need to prevent reordering, hence this barrier():
	 */
	FUNC0();
	FUNC5();
	FUNC14();

	idx = FUNC17(&vcpu->kvm->srcu);

	r = FUNC6(kvm_run, vcpu);

	if (r > 0) {
		if (!FUNC12())
			goto again;
	}

out:
	FUNC18(&vcpu->kvm->srcu, idx);
	if (r > 0) {
		FUNC7(vcpu);
		idx = FUNC17(&vcpu->kvm->srcu);
		goto again;
	}

	return r;

vcpu_run_fail:
	FUNC11();
	FUNC14();
	kvm_run->exit_reason = KVM_EXIT_FAIL_ENTRY;
	goto out;
}