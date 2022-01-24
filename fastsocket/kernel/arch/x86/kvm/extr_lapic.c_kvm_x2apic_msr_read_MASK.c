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
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_2__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; TYPE_1__ arch; } ;
struct kvm_lapic {int dummy; } ;

/* Variables and functions */
 int APIC_BASE_MSR ; 
 int APIC_ICR2 ; 
 scalar_t__ FUNC0 (struct kvm_lapic*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct kvm_vcpu *vcpu, u32 msr, u64 *data)
{
	struct kvm_lapic *apic = vcpu->arch.apic;
	u32 reg = (msr - APIC_BASE_MSR) << 4, low, high = 0;

	if (!FUNC2(vcpu->kvm) || !FUNC1(apic))
		return 1;

	if (FUNC0(apic, reg, 4, &low))
		return 1;
	if (msr == 0x830)
		FUNC0(apic, APIC_ICR2, 4, &high);

	*data = (((u64)high) << 32) | low;

	return 0;
}