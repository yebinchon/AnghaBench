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
typedef  size_t u8 ;
struct iwl_mvm_sta {int /*<<< orphan*/  mac_id_n_color; struct ieee80211_vif* vif; } ;
struct TYPE_2__ {int /*<<< orphan*/  key_offset; int /*<<< orphan*/  key_flags; } ;
struct iwl_mvm_add_sta_cmd {size_t sta_id; int /*<<< orphan*/  add_modify; int /*<<< orphan*/  modify_mask; TYPE_1__ key; int /*<<< orphan*/  mac_id_n_color; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * fw_id_to_mac_id; int /*<<< orphan*/  fw_key_table; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_key_conf {int keyidx; scalar_t__ cipher; int flags; int /*<<< orphan*/  hw_key_idx; } ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  ADD_STA ; 
#define  ADD_STA_SUCCESS 128 
 int EINVAL ; 
 int EIO ; 
 int ENOENT ; 
 int IEEE80211_KEY_FLAG_PAIRWISE ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,...) ; 
 size_t IWL_MVM_STATION_COUNT ; 
 int STA_KEY_FLG_KEYID_MSK ; 
 int STA_KEY_FLG_KEYID_POS ; 
 int STA_KEY_FLG_NO_ENC ; 
 int STA_KEY_FLG_WEP_KEY_MAP ; 
 int STA_KEY_MULTICAST ; 
 int STA_KEY_NOT_VALID ; 
 int /*<<< orphan*/  STA_MODE_MODIFY ; 
 int /*<<< orphan*/  STA_MODIFY_KEY ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ WLAN_CIPHER_SUITE_AES_CMAC ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (struct ieee80211_vif*,struct ieee80211_sta*) ; 
 int FUNC7 (struct iwl_mvm*,int /*<<< orphan*/ ,int,struct iwl_mvm_add_sta_cmd*,int*) ; 
 int FUNC8 (struct iwl_mvm*,struct ieee80211_key_conf*,size_t,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct ieee80211_sta* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC12(struct iwl_mvm *mvm,
			   struct ieee80211_vif *vif,
			   struct ieee80211_sta *sta,
			   struct ieee80211_key_conf *keyconf)
{
	struct iwl_mvm_sta *mvm_sta;
	struct iwl_mvm_add_sta_cmd cmd = {};
	__le16 key_flags;
	int ret, status;
	u8 sta_id;

	FUNC9(&mvm->mutex);

	/* Get the station id from the mvm local station table */
	sta_id = FUNC6(vif, sta);

	FUNC0(mvm, "mvm remove dynamic key: idx=%d sta=%d\n",
		      keyconf->keyidx, sta_id);

	if (keyconf->cipher == WLAN_CIPHER_SUITE_AES_CMAC)
		return FUNC8(mvm, keyconf, sta_id, true);

	ret = FUNC3(keyconf->hw_key_idx, mvm->fw_key_table);
	if (!ret) {
		FUNC1(mvm, "offset %d not used in fw key table.\n",
			keyconf->hw_key_idx);
		return -ENOENT;
	}

	if (sta_id == IWL_MVM_STATION_COUNT) {
		FUNC0(mvm, "station non-existent, early return.\n");
		return 0;
	}

	/*
	 * It is possible that the 'sta' parameter is NULL, and thus
	 * there is a need to retrieve the sta from the local station table,
	 * for example when a GTK is removed (where the sta_id will then be
	 * the AP ID, and no station was passed by mac80211.)
	 */
	if (!sta) {
		sta = FUNC11(mvm->fw_id_to_mac_id[sta_id],
						FUNC10(&mvm->mutex));
		if (!sta) {
			FUNC1(mvm, "Invalid station id\n");
			return -EINVAL;
		}
	}

	mvm_sta = (struct iwl_mvm_sta *)sta->drv_priv;
	if (FUNC2(mvm_sta->vif != vif))
		return -EINVAL;

	key_flags = FUNC4((keyconf->keyidx << STA_KEY_FLG_KEYID_POS) &
				 STA_KEY_FLG_KEYID_MSK);
	key_flags |= FUNC4(STA_KEY_FLG_NO_ENC | STA_KEY_FLG_WEP_KEY_MAP);
	key_flags |= FUNC4(STA_KEY_NOT_VALID);

	if (!(keyconf->flags & IEEE80211_KEY_FLAG_PAIRWISE))
		key_flags |= FUNC4(STA_KEY_MULTICAST);

	cmd.mac_id_n_color = FUNC5(mvm_sta->mac_id_n_color);
	cmd.key.key_flags = key_flags;
	cmd.key.key_offset = keyconf->hw_key_idx;
	cmd.sta_id = sta_id;

	cmd.modify_mask = STA_MODIFY_KEY;
	cmd.add_modify = STA_MODE_MODIFY;

	status = ADD_STA_SUCCESS;
	ret = FUNC7(mvm, ADD_STA, sizeof(cmd),
					  &cmd, &status);

	switch (status) {
	case ADD_STA_SUCCESS:
		FUNC0(mvm, "MODIFY_STA: remove sta key passed\n");
		break;
	default:
		ret = -EIO;
		FUNC1(mvm, "MODIFY_STA: remove sta key failed\n");
		break;
	}

	return ret;
}