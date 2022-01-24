#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kvm_lapic {scalar_t__ isr_count; int highest_isr_cache; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ APIC_ISR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(int vec, struct kvm_lapic *apic)
{
	if (FUNC1(vec, apic->regs + APIC_ISR))
		--apic->isr_count;
	FUNC0(apic->isr_count < 0);
	apic->highest_isr_cache = -1;
}