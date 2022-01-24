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
struct TYPE_4__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int timer_mode_mask; } ;
struct kvm_lapic {TYPE_1__ lapic_timer; } ;
struct kvm_cpuid_entry2 {int function; int ecx; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_CR4_OSXSAVE ; 
 int /*<<< orphan*/  X86_FEATURE_OSXSAVE ; 
 int /*<<< orphan*/  X86_FEATURE_TSC_DEADLINE_TIMER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ cpu_has_xsave ; 
 struct kvm_cpuid_entry2* FUNC1 (struct kvm_vcpu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct kvm_vcpu *vcpu)
{
	struct kvm_cpuid_entry2 *best;
	struct kvm_lapic *apic = vcpu->arch.apic;

	best = FUNC1(vcpu, 1, 0);
	if (!best)
		return;

	/* Update OSXSAVE bit */
	if (cpu_has_xsave && best->function == 0x1) {
		best->ecx &= ~(FUNC0(X86_FEATURE_OSXSAVE));
		if (FUNC3(vcpu, X86_CR4_OSXSAVE))
			best->ecx |= FUNC0(X86_FEATURE_OSXSAVE);
	}

	if (apic) {
		if (best->ecx & FUNC0(X86_FEATURE_TSC_DEADLINE_TIMER))
			apic->lapic_timer.timer_mode_mask = 3 << 17;
		else
			apic->lapic_timer.timer_mode_mask = 1 << 17;
	}

	FUNC2(vcpu);
}