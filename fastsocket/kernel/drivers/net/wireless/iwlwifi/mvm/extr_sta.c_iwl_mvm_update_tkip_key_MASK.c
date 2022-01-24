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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct iwl_mvm_sta {int dummy; } ;
struct iwl_mvm {int /*<<< orphan*/ * fw_id_to_mac_id; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_key_conf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sta*) ; 
 size_t IWL_MVM_STATION_COUNT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 size_t FUNC3 (struct ieee80211_vif*,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,struct iwl_mvm_sta*,struct ieee80211_key_conf*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ieee80211_sta* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(struct iwl_mvm *mvm,
			     struct ieee80211_vif *vif,
			     struct ieee80211_key_conf *keyconf,
			     struct ieee80211_sta *sta, u32 iv32,
			     u16 *phase1key)
{
	struct iwl_mvm_sta *mvm_sta;
	u8 sta_id = FUNC3(vif, sta);

	if (FUNC2(sta_id == IWL_MVM_STATION_COUNT))
		return;

	FUNC6();

	if (!sta) {
		sta = FUNC5(mvm->fw_id_to_mac_id[sta_id]);
		if (FUNC1(FUNC0(sta))) {
			FUNC7();
			return;
		}
	}

	mvm_sta = (void *)sta->drv_priv;
	FUNC4(mvm, mvm_sta, keyconf, sta_id,
			     iv32, phase1key, CMD_ASYNC);
	FUNC7();
}