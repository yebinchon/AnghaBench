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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_3__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int /*<<< orphan*/  tscdeadline; int /*<<< orphan*/  timer; } ;
struct kvm_lapic {TYPE_2__ lapic_timer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct kvm_lapic*) ; 
 scalar_t__ FUNC1 (struct kvm_lapic*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_lapic*) ; 

void FUNC4(struct kvm_vcpu *vcpu, u64 data)
{
	struct kvm_lapic *apic = vcpu->arch.apic;
	if (!apic)
		return;

	if (FUNC0(apic) || FUNC1(apic))
		return;

	FUNC2(&apic->lapic_timer.timer);
	apic->lapic_timer.tscdeadline = data;
	FUNC3(apic);
}