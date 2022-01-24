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
struct TYPE_2__ {int /*<<< orphan*/  irq_sources_bitmap; int /*<<< orphan*/  assigned_dev_head; int /*<<< orphan*/  vmm_init_rr; int /*<<< orphan*/  metaphysical_rr4; int /*<<< orphan*/  metaphysical_rr0; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GUEST_PHYSICAL_RR0 ; 
 int /*<<< orphan*/  GUEST_PHYSICAL_RR4 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KVM_USERSPACE_IRQ_SOURCE_ID ; 
 int /*<<< orphan*/  VMM_INIT_RR ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct kvm *kvm)
{
	FUNC0(!kvm);

	kvm->arch.metaphysical_rr0 = GUEST_PHYSICAL_RR0;
	kvm->arch.metaphysical_rr4 = GUEST_PHYSICAL_RR4;
	kvm->arch.vmm_init_rr = VMM_INIT_RR;

	/*
	 *Fill P2M entries for MMIO/IO ranges
	 */
	FUNC2(kvm);

	FUNC1(&kvm->arch.assigned_dev_head);

	/* Reserve bit 0 of irq_sources_bitmap for userspace irq source */
	FUNC3(KVM_USERSPACE_IRQ_SOURCE_ID, &kvm->arch.irq_sources_bitmap);
}