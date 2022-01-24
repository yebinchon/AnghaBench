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
struct multicall_space {struct mmu_update* args; TYPE_1__* mc; } ;
struct mmu_update {int dummy; } ;
struct TYPE_2__ {size_t* args; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DOMID_SELF ; 
 size_t MMU_UPDATE_HISTO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct mmu_update*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __HYPERVISOR_mmu_update ; 
 struct multicall_space FUNC2 (int) ; 
 int /*<<< orphan*/  mmu_update ; 
 int /*<<< orphan*/  mmu_update_extended ; 
 int /*<<< orphan*/ * mmu_update_histo ; 
 struct multicall_space FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(const struct mmu_update *update)
{
	struct multicall_space mcs;
	struct mmu_update *u;

	mcs = FUNC3(__HYPERVISOR_mmu_update, sizeof(*u));

	if (mcs.mc != NULL) {
		FUNC0(mmu_update_extended, 1);
		FUNC0(mmu_update_histo[mcs.mc->args[1]], -1);

		mcs.mc->args[1]++;

		if (mcs.mc->args[1] < MMU_UPDATE_HISTO)
			FUNC0(mmu_update_histo[mcs.mc->args[1]], 1);
		else
			FUNC0(mmu_update_histo[0], 1);
	} else {
		FUNC0(mmu_update, 1);
		mcs = FUNC2(sizeof(*u));
		FUNC1(mcs.mc, mcs.args, 1, NULL, DOMID_SELF);
		FUNC0(mmu_update_histo[1], 1);
	}

	u = mcs.args;
	*u = *update;
}