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
struct kvm_memslots {struct kvm_memory_slot* memslots; int /*<<< orphan*/  generation; } ;
struct kvm_memory_slot {unsigned long* dirty_bitmap; } ;
struct kvm_dirty_log {size_t slot; int /*<<< orphan*/  dirty_bitmap; } ;
struct kvm {int /*<<< orphan*/  slots_lock; int /*<<< orphan*/  mmu_lock; int /*<<< orphan*/  srcu; struct kvm_memslots* memslots; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t KVM_MEMORY_SLOTS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned long*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_memslots*) ; 
 unsigned long FUNC2 (struct kvm_memory_slot*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*,size_t,int) ; 
 struct kvm_memslots* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_memslots*,struct kvm_memslots*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm_memslots*,struct kvm_memslots*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long*) ; 
 unsigned long* FUNC14 (unsigned long) ; 

int FUNC15(struct kvm *kvm,
				      struct kvm_dirty_log *log)
{
	int r, i;
	struct kvm_memory_slot *memslot;
	unsigned long n;
	unsigned long is_dirty = 0;
	unsigned long *dirty_bitmap = NULL;

	FUNC7(&kvm->slots_lock);

	r = -EINVAL;
	if (log->slot >= KVM_MEMORY_SLOTS)
		goto out;

	memslot = &kvm->memslots->memslots[log->slot];
	r = -ENOENT;
	if (!memslot->dirty_bitmap)
		goto out;

	n = FUNC2(memslot);

	r = -ENOMEM;
	dirty_bitmap = FUNC14(n);
	if (!dirty_bitmap)
		goto out;
	FUNC6(dirty_bitmap, 0, n);

	for (i = 0; !is_dirty && i < n/sizeof(long); i++)
		is_dirty = memslot->dirty_bitmap[i];

	/* If nothing is dirty, don't bother messing with page tables. */
	if (is_dirty) {
		struct kvm_memslots *slots, *old_slots;

		slots = FUNC4(sizeof(struct kvm_memslots), GFP_KERNEL);
		if (!slots)
			goto out_free;

		FUNC5(slots, kvm->memslots, sizeof(struct kvm_memslots));
		slots->memslots[log->slot].dirty_bitmap = dirty_bitmap;
		slots->generation++;

		old_slots = kvm->memslots;
		FUNC9(kvm->memslots, slots);
		FUNC12(&kvm->srcu);
		dirty_bitmap = old_slots->memslots[log->slot].dirty_bitmap;
		FUNC1(old_slots);

		FUNC10(&kvm->mmu_lock);
		FUNC3(kvm, log->slot, false);
		FUNC11(&kvm->mmu_lock);
	}

	r = 0;
	if (FUNC0(log->dirty_bitmap, dirty_bitmap, n))
		r = -EFAULT;
out_free:
	FUNC13(dirty_bitmap);
out:
	FUNC8(&kvm->slots_lock);
	return r;
}