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
struct TYPE_3__ {int apic_base; struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int /*<<< orphan*/  timer; } ;
struct kvm_lapic {int base_address; int irr_pending; int highest_isr_cache; scalar_t__ regs; int /*<<< orphan*/  isr_count; TYPE_2__ lapic_timer; } ;

/* Variables and functions */
 scalar_t__ APIC_ISR ; 
 int MSR_IA32_APICBASE_BASE ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_lapic*) ; 

void FUNC6(struct kvm_vcpu *vcpu)
{
	struct kvm_lapic *apic = vcpu->arch.apic;

	apic->base_address = vcpu->arch.apic_base &
			     MSR_IA32_APICBASE_BASE;
	FUNC3(vcpu);

	FUNC0(apic);
	FUNC2(&apic->lapic_timer.timer);
	FUNC5(apic);
	FUNC4(apic);
	apic->irr_pending = true;
	apic->isr_count = FUNC1(apic->regs + APIC_ISR);
	apic->highest_isr_cache = -1;
}