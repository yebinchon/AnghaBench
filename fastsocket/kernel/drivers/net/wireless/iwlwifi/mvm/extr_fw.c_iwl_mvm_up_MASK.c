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
struct iwl_mvm {int /*<<< orphan*/  trans; int /*<<< orphan*/ * fw_id_to_mac_id; int /*<<< orphan*/  phy_db; int /*<<< orphan*/  fw; int /*<<< orphan*/  init_ucode_run; int /*<<< orphan*/  mutex; } ;
struct TYPE_2__ {scalar_t__ init_dbg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int) ; 
 int IWL_MVM_STATION_COUNT ; 
 int /*<<< orphan*/  IWL_UCODE_REGULAR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iwl_mvm*) ; 
 int FUNC5 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct iwl_mvm*,int) ; 
 int FUNC7 (struct iwl_mvm*) ; 
 int FUNC8 (struct iwl_mvm*) ; 
 int FUNC9 (struct iwl_mvm*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_1__ iwlmvm_mod_params ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(struct iwl_mvm *mvm)
{
	int ret, i;

	FUNC14(&mvm->mutex);

	ret = FUNC12(mvm->trans);
	if (ret)
		return ret;

	/* If we were in RFKILL during module loading, load init ucode now */
	if (!mvm->init_ucode_run) {
		ret = FUNC6(mvm, false);
		if (ret && !iwlmvm_mod_params.init_dbg) {
			FUNC1(mvm, "Failed to run INIT ucode: %d\n", ret);
			goto error;
		}
	}

	if (iwlmvm_mod_params.init_dbg)
		return 0;

	ret = FUNC5(mvm, IWL_UCODE_REGULAR);
	if (ret) {
		FUNC1(mvm, "Failed to start RT ucode: %d\n", ret);
		goto error;
	}

	ret = FUNC11(mvm, FUNC3(mvm->fw));
	if (ret)
		goto error;

	ret = FUNC8(mvm);
	if (ret)
		goto error;

	ret = FUNC7(mvm);
	if (ret)
		goto error;

	/* Send phy db control command and then phy db calibration*/
	ret = FUNC10(mvm->phy_db);
	if (ret)
		goto error;

	ret = FUNC9(mvm);
	if (ret)
		goto error;

	/* init the fw <-> mac80211 STA mapping */
	for (i = 0; i < IWL_MVM_STATION_COUNT; i++)
		FUNC2(mvm->fw_id_to_mac_id[i], NULL);

	/* Add auxiliary station for scanning */
	ret = FUNC4(mvm);
	if (ret)
		goto error;

	FUNC0(mvm, "RT uCode started.\n");

	return 0;
 error:
	FUNC13(mvm->trans);
	return ret;
}