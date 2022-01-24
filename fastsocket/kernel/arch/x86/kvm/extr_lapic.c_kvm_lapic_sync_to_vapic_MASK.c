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
typedef  int u32 ;
struct TYPE_2__ {struct kvm_lapic* apic; int /*<<< orphan*/  apic_attention; } ;
struct kvm_vcpu {TYPE_1__ arch; int /*<<< orphan*/  kvm; } ;
struct kvm_lapic {int /*<<< orphan*/  vapic_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_TASKPRI ; 
 int /*<<< orphan*/  KVM_APIC_CHECK_VAPIC ; 
 int FUNC0 (struct kvm_lapic*) ; 
 int FUNC1 (struct kvm_lapic*) ; 
 int FUNC2 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct kvm_vcpu *vcpu)
{
	u32 data, tpr;
	int max_irr, max_isr;
	struct kvm_lapic *apic = vcpu->arch.apic;

	FUNC3(vcpu, apic);

	if (!FUNC5(KVM_APIC_CHECK_VAPIC, &vcpu->arch.apic_attention))
		return;

	tpr = FUNC2(apic, APIC_TASKPRI) & 0xff;
	max_irr = FUNC0(apic);
	if (max_irr < 0)
		max_irr = 0;
	max_isr = FUNC1(apic);
	if (max_isr < 0)
		max_isr = 0;
	data = (tpr & 0xff) | ((max_isr & 0xf0) << 8) | (max_irr << 24);

	FUNC4(vcpu->kvm, &vcpu->arch.apic->vapic_cache, &data,
			       sizeof(u32));
}