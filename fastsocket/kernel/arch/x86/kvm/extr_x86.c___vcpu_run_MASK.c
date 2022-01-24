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
struct TYPE_6__ {int /*<<< orphan*/  signal_exits; int /*<<< orphan*/  request_irq_exits; } ;
struct TYPE_4__ {scalar_t__ mp_state; int /*<<< orphan*/  sipi_vector; } ;
struct kvm_vcpu {void* srcu_idx; TYPE_3__ stat; TYPE_2__* run; int /*<<< orphan*/  requests; TYPE_1__ arch; int /*<<< orphan*/  vcpu_id; struct kvm* kvm; } ;
struct kvm {int /*<<< orphan*/  srcu; } ;
struct TYPE_5__ {void* exit_reason; } ;

/* Variables and functions */
 int EINTR ; 
 void* KVM_EXIT_INTR ; 
#define  KVM_MP_STATE_HALTED 130 
#define  KVM_MP_STATE_RUNNABLE 129 
#define  KVM_MP_STATE_SIPI_RECEIVED 128 
 int /*<<< orphan*/  KVM_REQ_PENDING_TIMER ; 
 int /*<<< orphan*/  KVM_REQ_UNHALT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 
 int FUNC15 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC16(struct kvm_vcpu *vcpu)
{
	int r;
	struct kvm *kvm = vcpu->kvm;

	if (FUNC14(vcpu->arch.mp_state == KVM_MP_STATE_SIPI_RECEIVED)) {
		FUNC9("vcpu %d received sipi with vector # %x\n",
			 vcpu->vcpu_id, vcpu->arch.sipi_vector);
		FUNC5(vcpu);
		r = FUNC2(vcpu);
		if (r)
			return r;
		vcpu->arch.mp_state = KVM_MP_STATE_RUNNABLE;
	}

	vcpu->srcu_idx = FUNC11(&kvm->srcu);

	r = 1;
	while (r > 0) {
		if (vcpu->arch.mp_state == KVM_MP_STATE_RUNNABLE)
			r = FUNC15(vcpu);
		else {
			FUNC12(&kvm->srcu, vcpu->srcu_idx);
			FUNC7(vcpu);
			vcpu->srcu_idx = FUNC11(&kvm->srcu);
			if (FUNC13(KVM_REQ_UNHALT, &vcpu->requests))
			{
				switch(vcpu->arch.mp_state) {
				case KVM_MP_STATE_HALTED:
					vcpu->arch.mp_state =
						KVM_MP_STATE_RUNNABLE;
				case KVM_MP_STATE_RUNNABLE:
					break;
				case KVM_MP_STATE_SIPI_RECEIVED:
				default:
					r = -EINTR;
					break;
				}
			}
		}

		if (r <= 0)
			break;

		FUNC0(KVM_REQ_PENDING_TIMER, &vcpu->requests);
		if (FUNC3(vcpu))
			FUNC4(vcpu);

		if (FUNC1(vcpu)) {
			r = -EINTR;
			vcpu->run->exit_reason = KVM_EXIT_INTR;
			++vcpu->stat.request_irq_exits;
		}
		if (FUNC10(current)) {
			r = -EINTR;
			vcpu->run->exit_reason = KVM_EXIT_INTR;
			++vcpu->stat.signal_exits;
		}
		if (FUNC8()) {
			FUNC12(&kvm->srcu, vcpu->srcu_idx);
			FUNC6(vcpu);
			vcpu->srcu_idx = FUNC11(&kvm->srcu);
		}
	}

	FUNC12(&kvm->srcu, vcpu->srcu_idx);

	return r;
}