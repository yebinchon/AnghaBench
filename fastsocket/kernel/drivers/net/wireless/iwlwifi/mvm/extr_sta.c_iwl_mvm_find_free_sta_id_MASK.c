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
struct iwl_mvm {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * fw_id_to_mac_id; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int IWL_MVM_STATION_COUNT ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_IN_HW_RESTART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iwl_mvm *mvm)
{
	int sta_id;

	FUNC0(FUNC4(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status));

	FUNC1(&mvm->mutex);

	/* Don't take rcu_read_lock() since we are protected by mvm->mutex */
	for (sta_id = 0; sta_id < IWL_MVM_STATION_COUNT; sta_id++)
		if (!FUNC3(mvm->fw_id_to_mac_id[sta_id],
					       FUNC2(&mvm->mutex)))
			return sta_id;
	return IWL_MVM_STATION_COUNT;
}