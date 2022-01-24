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
struct mmu_page_path {unsigned int* idx; struct kvm_mmu_page** parent; } ;
struct kvm_mmu_page {int /*<<< orphan*/  unsync_child_bitmap; scalar_t__ unsync_children; } ;

/* Variables and functions */
 int PT64_ROOT_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mmu_page_path *parents)
{
	struct kvm_mmu_page *sp;
	unsigned int level = 0;

	do {
		unsigned int idx = parents->idx[level];

		sp = parents->parent[level];
		if (!sp)
			return;

		--sp->unsync_children;
		FUNC0((int)sp->unsync_children < 0);
		FUNC1(idx, sp->unsync_child_bitmap);
		level++;
	} while (level < PT64_ROOT_LEVEL-1 && !sp->unsync_children);
}