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
struct TYPE_2__ {int timer_mode_mask; } ;
struct kvm_lapic {TYPE_1__ lapic_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_LVTT ; 
 int APIC_LVT_TIMER_TSCDEADLINE ; 
 int FUNC0 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct kvm_lapic *apic)
{
	return ((FUNC0(apic, APIC_LVTT) &
		apic->lapic_timer.timer_mode_mask) ==
			APIC_LVT_TIMER_TSCDEADLINE);
}