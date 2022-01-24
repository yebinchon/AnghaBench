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
struct TYPE_2__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_PROCPRI ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_lapic*) ; 
 int FUNC1 (struct kvm_lapic*) ; 
 int FUNC2 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_lapic*) ; 

int FUNC4(struct kvm_vcpu *vcpu)
{
	struct kvm_lapic *apic = vcpu->arch.apic;
	int highest_irr;

	if (!apic || !FUNC0(apic))
		return -1;

	FUNC3(apic);
	highest_irr = FUNC1(apic);
	if ((highest_irr == -1) ||
	    ((highest_irr & 0xF0) <= FUNC2(apic, APIC_PROCPRI)))
		return -1;
	return highest_irr;
}