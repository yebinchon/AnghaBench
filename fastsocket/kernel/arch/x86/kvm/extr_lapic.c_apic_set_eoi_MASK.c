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
struct kvm_lapic {TYPE_1__* vcpu; scalar_t__ regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  kvm; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_SPIV ; 
 int APIC_SPIV_DIRECTED_EOI ; 
 scalar_t__ APIC_TMR ; 
 int IOAPIC_EDGE_TRIG ; 
 int IOAPIC_LEVEL_TRIG ; 
 int /*<<< orphan*/  FUNC0 (int,struct kvm_lapic*) ; 
 int FUNC1 (struct kvm_lapic*) ; 
 int FUNC2 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_lapic*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_lapic*,int) ; 

__attribute__((used)) static int FUNC8(struct kvm_lapic *apic)
{
	int vector = FUNC1(apic);

	FUNC7(apic, vector);

	/*
	 * Not every write EOI will has corresponding ISR,
	 * one example is when Kernel check timer on setup_IO_APIC
	 */
	if (vector == -1)
		return vector;

	FUNC0(vector, apic);
	FUNC4(apic);

	if (!(FUNC2(apic, APIC_SPIV) & APIC_SPIV_DIRECTED_EOI) &&
	    FUNC5(apic->vcpu->kvm, vector)) {
		int trigger_mode;
		if (FUNC3(vector, apic->regs + APIC_TMR))
			trigger_mode = IOAPIC_LEVEL_TRIG;
		else
			trigger_mode = IOAPIC_EDGE_TRIG;
		FUNC6(apic->vcpu->kvm, vector, trigger_mode);
	}
	return vector;
}