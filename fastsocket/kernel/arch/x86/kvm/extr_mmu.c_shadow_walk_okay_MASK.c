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
typedef  int /*<<< orphan*/  u64 ;
struct kvm_shadow_walk_iterator {scalar_t__ level; int index; int /*<<< orphan*/  shadow_addr; int /*<<< orphan*/ * sptep; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 scalar_t__ PT_PAGE_TABLE_LEVEL ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct kvm_shadow_walk_iterator *iterator)
{
	if (iterator->level < PT_PAGE_TABLE_LEVEL)
		return false;

	if (iterator->level == PT_PAGE_TABLE_LEVEL)
		if (FUNC2(*iterator->sptep))
			return false;

	iterator->index = FUNC0(iterator->addr, iterator->level);
	iterator->sptep	= ((u64 *)FUNC1(iterator->shadow_addr)) + iterator->index;
	return true;
}