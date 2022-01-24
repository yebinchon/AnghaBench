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
struct kvm_lapic {int highest_isr_cache; scalar_t__ regs; int /*<<< orphan*/  isr_count; } ;

/* Variables and functions */
 scalar_t__ APIC_ISR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3(struct kvm_lapic *apic)
{
	int result;
	if (!apic->isr_count)
		return -1;
	if (FUNC2(apic->highest_isr_cache != -1))
		return apic->highest_isr_cache;

	result = FUNC1(apic->regs + APIC_ISR);
	FUNC0(result == -1 || result >= 16);

	return result;
}