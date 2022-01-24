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
struct kvm_lapic_irq {int /*<<< orphan*/  trig_mode; int /*<<< orphan*/  level; int /*<<< orphan*/  vector; int /*<<< orphan*/  delivery_mode; } ;
struct kvm_lapic {int /*<<< orphan*/  vcpu; } ;

/* Variables and functions */
 int FUNC0 (struct kvm_lapic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct kvm_vcpu *vcpu, struct kvm_lapic_irq *irq)
{
	int result;
	struct kvm_lapic *apic = vcpu->arch.apic;

	result = FUNC0(apic, irq->delivery_mode, irq->vector,
			irq->level, irq->trig_mode);

	if (!FUNC1(apic->vcpu) && !irq->trig_mode)
		result = 0;

	return result;
}