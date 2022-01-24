#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct iwl_nvm_data {int dummy; } ;
struct iwl_notification_wait {int dummy; } ;
struct iwl_mvm {int init_ucode_run; TYPE_3__* nvm_data; int /*<<< orphan*/  trans; int /*<<< orphan*/  notif_wait; int /*<<< orphan*/  fw; int /*<<< orphan*/  phy_db; int /*<<< orphan*/  mutex; } ;
struct ieee80211_rate {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  init_dbg; } ;
struct TYPE_8__ {int valid_rx_ant; int valid_tx_ant; TYPE_2__* bands; scalar_t__ channels; } ;
struct TYPE_7__ {int n_channels; int n_bitrates; TYPE_1__* bitrates; scalar_t__ channels; } ;
struct TYPE_6__ {int hw_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
#define  CALIB_RES_NOTIF_PHY_DB 129 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  INIT_COMPLETE_NOTIF 128 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  IWL_UCODE_INIT ; 
 int /*<<< orphan*/  MVM_UCODE_CALIB_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct iwl_notification_wait*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct iwl_notification_wait*) ; 
 int FUNC9 (struct iwl_mvm*) ; 
 int FUNC10 (struct iwl_mvm*) ; 
 int FUNC11 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct iwl_notification_wait*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iwl_wait_phy_db_entry ; 
 TYPE_4__ iwlmvm_mod_params ; 
 TYPE_3__* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int FUNC17(struct iwl_mvm *mvm, bool read_nvm)
{
	struct iwl_notification_wait calib_wait;
	static const u8 init_complete[] = {
		INIT_COMPLETE_NOTIF,
		CALIB_RES_NOTIF_PHY_DB
	};
	int ret;

	FUNC16(&mvm->mutex);

	if (mvm->init_ucode_run)
		return 0;

	FUNC4(&mvm->notif_wait,
				   &calib_wait,
				   init_complete,
				   FUNC0(init_complete),
				   iwl_wait_phy_db_entry,
				   mvm->phy_db);

	/* Will also start the device */
	ret = FUNC5(mvm, IWL_UCODE_INIT);
	if (ret) {
		FUNC1(mvm, "Failed to start INIT ucode: %d\n", ret);
		goto error;
	}

	ret = FUNC9(mvm);
	if (ret)
		goto error;

	if (read_nvm) {
		/* Read nvm */
		ret = FUNC7(mvm);
		if (ret) {
			FUNC1(mvm, "Failed to read NVM: %d\n", ret);
			goto error;
		}
	}

	ret = FUNC6(mvm->nvm_data, mvm->trans);
	FUNC2(ret);

	/* Send TX valid antennas before triggering calibrations */
	ret = FUNC11(mvm, FUNC3(mvm->fw));
	if (ret)
		goto error;

	/* need to set default values */
	ret = FUNC12(mvm);
	if (ret)
		goto error;

	/*
	 * Send phy configurations command to init uCode
	 * to start the 16.0 uCode init image internal calibrations.
	 */
	ret = FUNC10(mvm);
	if (ret) {
		FUNC1(mvm, "Failed to run INIT calibrations: %d\n",
			ret);
		goto error;
	}

	/*
	 * Some things may run in the background now, but we
	 * just wait for the calibration complete notification.
	 */
	ret = FUNC14(&mvm->notif_wait, &calib_wait,
			MVM_UCODE_CALIB_TIMEOUT);
	if (!ret)
		mvm->init_ucode_run = true;
	goto out;

error:
	FUNC8(&mvm->notif_wait, &calib_wait);
out:
	if (!iwlmvm_mod_params.init_dbg) {
		FUNC13(mvm->trans);
	} else if (!mvm->nvm_data) {
		/* we want to debug INIT and we have no NVM - fake */
		mvm->nvm_data = FUNC15(sizeof(struct iwl_nvm_data) +
					sizeof(struct ieee80211_channel) +
					sizeof(struct ieee80211_rate),
					GFP_KERNEL);
		if (!mvm->nvm_data)
			return -ENOMEM;
		mvm->nvm_data->valid_rx_ant = 1;
		mvm->nvm_data->valid_tx_ant = 1;
		mvm->nvm_data->bands[0].channels = mvm->nvm_data->channels;
		mvm->nvm_data->bands[0].n_channels = 1;
		mvm->nvm_data->bands[0].n_bitrates = 1;
		mvm->nvm_data->bands[0].bitrates =
			(void *)mvm->nvm_data->channels + 1;
		mvm->nvm_data->bands[0].bitrates->hw_value = 10;
	}

	return ret;
}