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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_3__ {int /*<<< orphan*/  level; } ;
struct kvm_mmu_page {TYPE_1__ role; int /*<<< orphan*/ * spt; } ;
struct TYPE_4__ {int /*<<< orphan*/  lpages; } ;
struct kvm {TYPE_2__ stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  PT64_BASE_ADDR_MASK ; 
 unsigned int PT64_ENT_PER_PAGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shadow_trap_nonpresent_pte ; 

__attribute__((used)) static void FUNC6(struct kvm *kvm,
					 struct kvm_mmu_page *sp)
{
	unsigned i;
	u64 *pt;
	u64 ent;

	pt = sp->spt;

	for (i = 0; i < PT64_ENT_PER_PAGE; ++i) {
		ent = pt[i];

		if (FUNC2(ent)) {
			if (!FUNC1(ent, sp->role.level)) {
				ent &= PT64_BASE_ADDR_MASK;
				FUNC3(FUNC4(ent),
							   &pt[i]);
			} else {
				if (FUNC0(ent))
					--kvm->stat.lpages;
				FUNC5(kvm, &pt[i]);
			}
		}
		pt[i] = shadow_trap_nonpresent_pte;
	}
}