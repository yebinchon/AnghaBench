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
struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 struct kvm_memory_slot* FUNC0 (struct kvm*,int /*<<< orphan*/ ) ; 
 int* FUNC1 (int /*<<< orphan*/ ,struct kvm_memory_slot*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct kvm *kvm,
				gfn_t gfn,
				int level)
{
	struct kvm_memory_slot *slot;
	int *largepage_idx;

	gfn = FUNC2(kvm, gfn);
	slot = FUNC0(kvm, gfn);
	if (slot) {
		largepage_idx = FUNC1(gfn, slot, level);
		return *largepage_idx;
	}

	return 1;
}