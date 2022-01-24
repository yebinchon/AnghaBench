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
struct kvm_mem_aliases {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tsc_write_lock; int /*<<< orphan*/  irq_sources_bitmap; int /*<<< orphan*/  assigned_dev_head; int /*<<< orphan*/  active_mmu_pages; void* aliases; } ;
struct kvm {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct kvm* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KVM_USERSPACE_IRQ_SOURCE_ID ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct  kvm *FUNC6(void)
{
	struct kvm *kvm = FUNC3(sizeof(struct kvm), GFP_KERNEL);

	if (!kvm)
		return FUNC0(-ENOMEM);

	kvm->arch.aliases = FUNC3(sizeof(struct kvm_mem_aliases), GFP_KERNEL);
	if (!kvm->arch.aliases) {
		FUNC2(kvm);
		return FUNC0(-ENOMEM);
	}

	FUNC1(&kvm->arch.active_mmu_pages);
	FUNC1(&kvm->arch.assigned_dev_head);

	/* Reserve bit 0 of irq_sources_bitmap for userspace irq source */
	FUNC4(KVM_USERSPACE_IRQ_SOURCE_ID, &kvm->arch.irq_sources_bitmap);

	FUNC5(&kvm->arch.tsc_write_lock);

	return kvm;
}