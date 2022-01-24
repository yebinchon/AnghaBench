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
struct TYPE_6__ {scalar_t__ cur_count; } ;
struct TYPE_8__ {scalar_t__ mp_state; int /*<<< orphan*/  mmio_fault_cr2; TYPE_1__ pio; } ;
struct kvm_vcpu {int mmio_read_completed; scalar_t__ sigset_active; void* srcu_idx; TYPE_5__* kvm; TYPE_3__ arch; scalar_t__ mmio_needed; int /*<<< orphan*/  mmio_data; int /*<<< orphan*/  requests; int /*<<< orphan*/  sigset; } ;
struct TYPE_9__ {int /*<<< orphan*/  ret; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
struct kvm_run {scalar_t__ exit_reason; TYPE_4__ hypercall; TYPE_2__ mmio; int /*<<< orphan*/  cr8; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_10__ {int /*<<< orphan*/  srcu; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int EMULATE_DO_MMIO ; 
 int /*<<< orphan*/  EMULTYPE_NO_DECODE ; 
 scalar_t__ KVM_EXIT_HYPERCALL ; 
 scalar_t__ KVM_MP_STATE_UNINITIALIZED ; 
 int /*<<< orphan*/  KVM_REQ_UNHALT ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  VCPU_REGS_RAX ; 
 int FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*) ; 
 int FUNC15 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC16(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
{
	int r;
	sigset_t sigsaved;

	FUNC13(vcpu);

	if (vcpu->sigset_active)
		FUNC9(SIG_SETMASK, &vcpu->sigset, &sigsaved);

	if (FUNC12(vcpu->arch.mp_state == KVM_MP_STATE_UNINITIALIZED)) {
		FUNC6(vcpu);
		FUNC1(KVM_REQ_UNHALT, &vcpu->requests);
		r = -EAGAIN;
		goto out;
	}

	/* re-sync apic's tpr */
	if (!FUNC3(vcpu->kvm)) {
		if (FUNC5(vcpu, kvm_run->cr8) != 0) {
			r = -EINVAL;
			goto out;
		}
	}

	if (vcpu->arch.pio.cur_count) {
		vcpu->srcu_idx = FUNC10(&vcpu->kvm->srcu);
		r = FUNC2(vcpu);
		FUNC11(&vcpu->kvm->srcu, vcpu->srcu_idx);
		if (r)
			goto out;
	}
#if CONFIG_HAS_IOMEM
	if (vcpu->mmio_needed) {
		memcpy(vcpu->mmio_data, kvm_run->mmio.data, 8);
		vcpu->mmio_read_completed = 1;
		vcpu->mmio_needed = 0;

		vcpu->srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
		r = x86_emulate_instruction(vcpu, vcpu->arch.mmio_fault_cr2,
					EMULTYPE_NO_DECODE, NULL, 0);
		srcu_read_unlock(&vcpu->kvm->srcu, vcpu->srcu_idx);
		if (r == EMULATE_DO_MMIO) {
			/*
			 * Read-modify-write.  Back to userspace.
			 */
			r = 0;
			goto out;
		}
	}
#endif
	if (kvm_run->exit_reason == KVM_EXIT_HYPERCALL)
		FUNC4(vcpu, VCPU_REGS_RAX,
				     kvm_run->hypercall.ret);

	r = FUNC0(vcpu);

out:
	FUNC8(vcpu);
	if (vcpu->sigset_active)
		FUNC9(SIG_SETMASK, &sigsaved, NULL);

	FUNC14(vcpu);
	return r;
}