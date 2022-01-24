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
 int /*<<< orphan*/  FUNC0 (int,struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_lapic*) ; 
 int FUNC3 (struct kvm_vcpu*) ; 

int FUNC4(struct kvm_vcpu *vcpu)
{
	int vector = FUNC3(vcpu);
	struct kvm_lapic *apic = vcpu->arch.apic;

	if (vector == -1)
		return -1;

	FUNC1(vector, apic);
	FUNC2(apic);
	FUNC0(vector, apic);
	return vector;
}