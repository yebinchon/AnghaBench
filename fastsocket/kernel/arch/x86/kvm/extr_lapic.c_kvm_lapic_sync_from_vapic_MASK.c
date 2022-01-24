#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {TYPE_2__* apic; int /*<<< orphan*/  apic_attention; } ;
struct kvm_vcpu {TYPE_1__ arch; int /*<<< orphan*/  kvm; } ;
struct TYPE_5__ {int /*<<< orphan*/  vapic_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_APIC_CHECK_VAPIC ; 
 int /*<<< orphan*/  KVM_APIC_PV_EOI_PENDING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct kvm_vcpu *vcpu)
{
	u32 data;

	if (FUNC3(KVM_APIC_PV_EOI_PENDING, &vcpu->arch.apic_attention))
		FUNC1(vcpu, vcpu->arch.apic);

	if (!FUNC3(KVM_APIC_CHECK_VAPIC, &vcpu->arch.apic_attention))
		return;

	FUNC2(vcpu->kvm, &vcpu->arch.apic->vapic_cache, &data,
			      sizeof(u32));

	FUNC0(vcpu->arch.apic, data & 0xff);
}