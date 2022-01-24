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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_LVT0 ; 
 int APIC_LVT_MASKED ; 
 scalar_t__ APIC_MODE_EXTINT ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct kvm_vcpu *vcpu)
{
	u32 lvt0 = FUNC1(vcpu->arch.apic, APIC_LVT0);
	int r = 0;

	if (!FUNC2(vcpu->arch.apic))
		r = 1;
	if ((lvt0 & APIC_LVT_MASKED) == 0 &&
	    FUNC0(lvt0) == APIC_MODE_EXTINT)
		r = 1;
	return r;
}