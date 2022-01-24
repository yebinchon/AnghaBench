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
struct kvm_memory_slot {unsigned long* rmap; size_t base_gfn; TYPE_1__** lpage_info; } ;
struct kvm {int dummy; } ;
typedef  size_t gfn_t ;
struct TYPE_2__ {unsigned long rmap_pde; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int PT_PAGE_TABLE_LEVEL ; 
 struct kvm_memory_slot* FUNC1 (struct kvm*,size_t) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static unsigned long *FUNC3(struct kvm *kvm, gfn_t gfn, int level)
{
	struct kvm_memory_slot *slot;
	unsigned long idx;

	slot = FUNC1(kvm, gfn);
	if (FUNC2(level == PT_PAGE_TABLE_LEVEL))
		return &slot->rmap[gfn - slot->base_gfn];

	idx = (gfn / FUNC0(level)) -
		(slot->base_gfn / FUNC0(level));

	return &slot->lpage_info[level - 2][idx].rmap_pde;
}