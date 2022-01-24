#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kvm_memory_slot {int /*<<< orphan*/  dirty_bitmap; } ;
struct kvm_dirty_log {size_t slot; } ;
struct TYPE_4__ {int /*<<< orphan*/  dirty_log_lock; } ;
struct kvm {TYPE_2__ arch; int /*<<< orphan*/  slots_lock; TYPE_1__* memslots; } ;
struct TYPE_3__ {struct kvm_memory_slot* memslots; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct kvm_memory_slot*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*) ; 
 int FUNC2 (struct kvm*,struct kvm_dirty_log*,int*) ; 
 int FUNC3 (struct kvm*,struct kvm_dirty_log*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct kvm *kvm,
		struct kvm_dirty_log *log)
{
	int r;
	unsigned long n;
	struct kvm_memory_slot *memslot;
	int is_dirty = 0;

	FUNC5(&kvm->slots_lock);
	FUNC7(&kvm->arch.dirty_log_lock);

	r = FUNC3(kvm, log);
	if (r)
		goto out;

	r = FUNC2(kvm, log, &is_dirty);
	if (r)
		goto out;

	/* If nothing is dirty, don't bother messing with page tables. */
	if (is_dirty) {
		FUNC1(kvm);
		memslot = &kvm->memslots->memslots[log->slot];
		n = FUNC0(memslot);
		FUNC4(memslot->dirty_bitmap, 0, n);
	}
	r = 0;
out:
	FUNC6(&kvm->slots_lock);
	FUNC8(&kvm->arch.dirty_log_lock);
	return r;
}