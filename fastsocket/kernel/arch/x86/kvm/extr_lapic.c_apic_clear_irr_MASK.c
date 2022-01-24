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
struct kvm_lapic {int irr_pending; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ APIC_IRR ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int FUNC1 (struct kvm_lapic*) ; 

__attribute__((used)) static inline void FUNC2(int vec, struct kvm_lapic *apic)
{
	apic->irr_pending = false;
	FUNC0(vec, apic->regs + APIC_IRR);
	if (FUNC1(apic) != -1)
		apic->irr_pending = true;
}