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
typedef  int u32 ;
struct kvm_lapic {int dummy; } ;

/* Variables and functions */
 int APIC_LVT_LEVEL_TRIGGER ; 
 int APIC_LVT_MASKED ; 
 int APIC_MODE_MASK ; 
 int APIC_VECTOR_MASK ; 
 int FUNC0 (struct kvm_lapic*,int,int,int,int) ; 
 int FUNC1 (struct kvm_lapic*,int) ; 
 scalar_t__ FUNC2 (struct kvm_lapic*) ; 

int FUNC3(struct kvm_lapic *apic, int lvt_type)
{
	u32 reg = FUNC1(apic, lvt_type);
	int vector, mode, trig_mode;

	if (FUNC2(apic) && !(reg & APIC_LVT_MASKED)) {
		vector = reg & APIC_VECTOR_MASK;
		mode = reg & APIC_MODE_MASK;
		trig_mode = reg & APIC_LVT_LEVEL_TRIGGER;
		return FUNC0(apic, mode, vector, 1, trig_mode);
	}
	return 0;
}