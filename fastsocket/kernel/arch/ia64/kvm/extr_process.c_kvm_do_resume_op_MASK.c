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
struct TYPE_2__ {scalar_t__ ptc_g_count; } ;
struct kvm_vcpu {TYPE_1__ arch; int /*<<< orphan*/  requests; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_PTC_G ; 
 int /*<<< orphan*/  KVM_REQ_RESUME ; 
 int /*<<< orphan*/  KVM_REQ_TLB_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC6(struct kvm_vcpu *vcpu)
{
	FUNC5(vcpu); /*Guarantee vcpu runing on healthy vmm!*/

	if (FUNC1(KVM_REQ_RESUME, &vcpu->requests)) {
		FUNC4(vcpu);
		return;
	}

	if (FUNC3(FUNC1(KVM_REQ_TLB_FLUSH, &vcpu->requests))) {
		FUNC2(vcpu);
		return;
	}

	if (FUNC1(KVM_REQ_PTC_G, &vcpu->requests)) {
		while (vcpu->arch.ptc_g_count > 0)
			FUNC0(vcpu, --vcpu->arch.ptc_g_count);
	}
}