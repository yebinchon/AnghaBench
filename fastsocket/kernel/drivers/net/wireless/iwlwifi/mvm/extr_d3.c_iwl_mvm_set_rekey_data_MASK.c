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
struct TYPE_3__ {int valid; int /*<<< orphan*/  replay_ctr; int /*<<< orphan*/  kck; int /*<<< orphan*/  kek; } ;
struct iwl_mvm_vif {TYPE_1__ rekey_data; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct cfg80211_gtk_rekey_data {int /*<<< orphan*/  replay_ctr; int /*<<< orphan*/  kck; int /*<<< orphan*/  kek; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_4__ {scalar_t__ sw_crypto; } ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  NL80211_KCK_LEN ; 
 int /*<<< orphan*/  NL80211_KEK_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct iwl_mvm_vif* FUNC3 (struct ieee80211_vif*) ; 
 TYPE_2__ iwlwifi_mod_params ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct ieee80211_hw *hw,
			    struct ieee80211_vif *vif,
			    struct cfg80211_gtk_rekey_data *data)
{
	struct iwl_mvm *mvm = FUNC0(hw);
	struct iwl_mvm_vif *mvmvif = FUNC3(vif);

	if (iwlwifi_mod_params.sw_crypto)
		return;

	FUNC5(&mvm->mutex);

	FUNC4(mvmvif->rekey_data.kek, data->kek, NL80211_KEK_LEN);
	FUNC4(mvmvif->rekey_data.kck, data->kck, NL80211_KCK_LEN);
	mvmvif->rekey_data.replay_ctr =
		FUNC2(FUNC1((__be64 *)&data->replay_ctr));
	mvmvif->rekey_data.valid = true;

	FUNC6(&mvm->mutex);
}