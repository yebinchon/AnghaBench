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
struct TYPE_3__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct hrtimer {int dummy; } ;
struct TYPE_4__ {struct hrtimer timer; } ;
struct kvm_lapic {TYPE_2__ lapic_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 scalar_t__ FUNC0 (struct hrtimer*) ; 
 int /*<<< orphan*/  FUNC1 (struct hrtimer*,int /*<<< orphan*/ ) ; 

void FUNC2(struct kvm_vcpu *vcpu)
{
	struct kvm_lapic *apic = vcpu->arch.apic;
	struct hrtimer *timer;

	if (!apic)
		return;

	timer = &apic->lapic_timer.timer;
	if (FUNC0(timer))
		FUNC1(timer, HRTIMER_MODE_ABS);
}