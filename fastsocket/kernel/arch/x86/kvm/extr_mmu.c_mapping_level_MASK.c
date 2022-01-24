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
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
struct kvm_memory_slot {scalar_t__ dirty_bitmap; } ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 int PT_DIRECTORY_LEVEL ; 
 int PT_PAGE_TABLE_LEVEL ; 
 struct kvm_memory_slot* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct kvm_vcpu *vcpu, gfn_t large_gfn)
{
	struct kvm_memory_slot *slot;
	int host_level;
	int level = PT_PAGE_TABLE_LEVEL;

	slot = FUNC0(vcpu->kvm, large_gfn);
	if (slot && slot->dirty_bitmap)
		return PT_PAGE_TABLE_LEVEL;

	host_level = FUNC2(vcpu->kvm, large_gfn);

	if (host_level == PT_PAGE_TABLE_LEVEL)
		return host_level;

	for (level = PT_DIRECTORY_LEVEL; level <= host_level; ++level)
		if (FUNC1(vcpu->kvm, large_gfn, level))
			break;

	return level - 1;
}