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
struct iwl_mvm {int /*<<< orphan*/  aux_sta; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_INDEX_AUX ; 
 int FUNC0 (struct iwl_mvm*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iwl_mvm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct iwl_mvm *mvm)
{
	int ret;

	FUNC3(&mvm->mutex);

	/* Add the aux station, but without any queues */
	ret = FUNC1(mvm, &mvm->aux_sta, 0);
	if (ret)
		return ret;

	ret = FUNC0(mvm, &mvm->aux_sta, NULL,
					 MAC_INDEX_AUX, 0);

	if (ret)
		FUNC2(mvm, &mvm->aux_sta);
	return ret;
}