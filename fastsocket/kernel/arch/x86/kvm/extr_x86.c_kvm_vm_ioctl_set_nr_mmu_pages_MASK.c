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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ n_requested_mmu_pages; } ;
struct kvm {int /*<<< orphan*/  slots_lock; int /*<<< orphan*/  mmu_lock; TYPE_1__ arch; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ KVM_MIN_ALLOC_MMU_PAGES ; 
 int /*<<< orphan*/  FUNC0 (struct kvm*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct kvm *kvm,
					  u32 kvm_nr_mmu_pages)
{
	if (kvm_nr_mmu_pages < KVM_MIN_ALLOC_MMU_PAGES)
		return -EINVAL;

	FUNC1(&kvm->slots_lock);
	FUNC3(&kvm->mmu_lock);

	FUNC0(kvm, kvm_nr_mmu_pages);
	kvm->arch.n_requested_mmu_pages = kvm_nr_mmu_pages;

	FUNC4(&kvm->mmu_lock);
	FUNC2(&kvm->slots_lock);
	return 0;
}