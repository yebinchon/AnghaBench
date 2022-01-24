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
struct TYPE_3__ {int tsc_offset_adjustment; int last_host_tsc; int tsc_catchup; } ;
struct kvm_vcpu {int cpu; int /*<<< orphan*/  requests; TYPE_1__ arch; } ;
typedef  int s64 ;
struct TYPE_4__ {int /*<<< orphan*/  (* vcpu_load ) (struct kvm_vcpu*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_CLOCK_UPDATE ; 
 int /*<<< orphan*/  KVM_REQ_GLOBAL_CLOCK_UPDATE ; 
 int /*<<< orphan*/  KVM_REQ_STEAL_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 TYPE_2__* kvm_x86_ops ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,int) ; 
 scalar_t__ FUNC8 (int) ; 

void FUNC9(struct kvm_vcpu *vcpu, int cpu)
{
	kvm_x86_ops->vcpu_load(vcpu, cpu);

	/* Apply any externally detected TSC adjustments (due to suspend) */
	if (FUNC8(vcpu->arch.tsc_offset_adjustment)) {
		FUNC2(vcpu, vcpu->arch.tsc_offset_adjustment);
		vcpu->arch.tsc_offset_adjustment = 0;
		FUNC6(KVM_REQ_CLOCK_UPDATE, &vcpu->requests);
	}
	if (FUNC8(vcpu->cpu != cpu) || FUNC3()) {
		/* Make sure TSC doesn't go backwards */
		s64 tsc_delta = !vcpu->arch.last_host_tsc ? 0 :
				FUNC5() - vcpu->arch.last_host_tsc;
		if (tsc_delta < 0)
			FUNC0(!FUNC3());
		if (FUNC3()) {
			FUNC2(vcpu, -tsc_delta);
			vcpu->arch.tsc_catchup = 1;
		}
		FUNC6(KVM_REQ_GLOBAL_CLOCK_UPDATE, &vcpu->requests);
		if (vcpu->cpu != cpu)
			FUNC4(vcpu);
		vcpu->cpu = cpu;
	}

	FUNC1(vcpu);
	FUNC6(KVM_REQ_STEAL_UPDATE, &vcpu->requests);
}