#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct kvm_lapic {TYPE_3__* vcpu; } ;
struct TYPE_6__ {TYPE_2__* kvm; int /*<<< orphan*/  vcpu_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  vapics_in_nmi_mode; } ;
struct TYPE_5__ {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_LVT0 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct kvm_lapic *apic, u32 lvt0_val)
{
	int nmi_wd_enabled = FUNC2(FUNC1(apic, APIC_LVT0));

	if (FUNC2(lvt0_val)) {
		if (!nmi_wd_enabled) {
			FUNC0("Receive NMI setting on APIC_LVT0 "
				   "for cpu %d\n", apic->vcpu->vcpu_id);
			apic->vcpu->kvm->arch.vapics_in_nmi_mode++;
		}
	} else if (nmi_wd_enabled)
		apic->vcpu->kvm->arch.vapics_in_nmi_mode--;
}