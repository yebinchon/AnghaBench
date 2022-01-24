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
 int KVM_NR_PAGE_SIZES ; 
 int PT_DIRECTORY_LEVEL ; 
 int PT_PAGE_TABLE_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct kvm_memory_slot* FUNC1 (struct kvm*,int /*<<< orphan*/ ) ; 
 int* FUNC2 (int /*<<< orphan*/ ,struct kvm_memory_slot*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct kvm *kvm, gfn_t gfn)
{
	struct kvm_memory_slot *slot;
	int *write_count;
	int i;

	gfn = FUNC3(kvm, gfn);
	for (i = PT_DIRECTORY_LEVEL;
	     i < PT_PAGE_TABLE_LEVEL + KVM_NR_PAGE_SIZES; ++i) {
		slot          = FUNC1(kvm, gfn);
		write_count   = FUNC2(gfn, slot, i);
		*write_count -= 1;
		FUNC0(*write_count < 0);
	}
}