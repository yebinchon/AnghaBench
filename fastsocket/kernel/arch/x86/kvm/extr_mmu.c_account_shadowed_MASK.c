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
 struct kvm_memory_slot* FUNC0 (struct kvm*,int /*<<< orphan*/ ) ; 
 int* FUNC1 (int /*<<< orphan*/ ,struct kvm_memory_slot*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct kvm *kvm, gfn_t gfn)
{
	struct kvm_memory_slot *slot;
	int *write_count;
	int i;

	gfn = FUNC2(kvm, gfn);

	slot = FUNC0(kvm, gfn);
	for (i = PT_DIRECTORY_LEVEL;
	     i < PT_PAGE_TABLE_LEVEL + KVM_NR_PAGE_SIZES; ++i) {
		write_count   = FUNC1(gfn, slot, i);
		*write_count += 1;
	}
}