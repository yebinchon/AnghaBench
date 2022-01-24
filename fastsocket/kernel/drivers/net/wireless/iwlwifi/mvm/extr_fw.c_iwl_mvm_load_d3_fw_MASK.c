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
struct iwl_mvm {int /*<<< orphan*/  trans; int /*<<< orphan*/ * fw_id_to_mac_id; int /*<<< orphan*/  phy_db; int /*<<< orphan*/  fw; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int) ; 
 int IWL_MVM_STATION_COUNT ; 
 int /*<<< orphan*/  IWL_UCODE_WOWLAN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iwl_mvm*) ; 
 int FUNC4 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct iwl_mvm*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct iwl_mvm *mvm)
{
	int ret, i;

	FUNC10(&mvm->mutex);

	ret = FUNC8(mvm->trans);
	if (ret)
		return ret;

	ret = FUNC4(mvm, IWL_UCODE_WOWLAN);
	if (ret) {
		FUNC0(mvm, "Failed to start WoWLAN firmware: %d\n", ret);
		goto error;
	}

	ret = FUNC7(mvm, FUNC2(mvm->fw));
	if (ret)
		goto error;

	/* Send phy db control command and then phy db calibration*/
	ret = FUNC6(mvm->phy_db);
	if (ret)
		goto error;

	ret = FUNC5(mvm);
	if (ret)
		goto error;

	/* init the fw <-> mac80211 STA mapping */
	for (i = 0; i < IWL_MVM_STATION_COUNT; i++)
		FUNC1(mvm->fw_id_to_mac_id[i], NULL);

	/* Add auxiliary station for scanning */
	ret = FUNC3(mvm);
	if (ret)
		goto error;

	return 0;
 error:
	FUNC9(mvm->trans);
	return ret;
}