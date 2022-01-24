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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct iwl_mvm {int /*<<< orphan*/  mutex; TYPE_1__* nvm_data; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;
struct TYPE_4__ {int disable_11n; } ;
struct TYPE_3__ {int /*<<< orphan*/  sku_cap_11n_enable; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
#define  IEEE80211_AMPDU_RX_START 134 
#define  IEEE80211_AMPDU_RX_STOP 133 
#define  IEEE80211_AMPDU_TX_OPERATIONAL 132 
#define  IEEE80211_AMPDU_TX_START 131 
#define  IEEE80211_AMPDU_TX_STOP_CONT 130 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH 129 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH_CONT 128 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int IWL_DISABLE_HT_RXAGG ; 
 int IWL_DISABLE_HT_TXAGG ; 
 struct iwl_mvm* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct iwl_mvm*,struct ieee80211_sta*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 TYPE_2__ iwlwifi_mod_params ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct ieee80211_hw *hw,
				    struct ieee80211_vif *vif,
				    enum ieee80211_ampdu_mlme_action action,
				    struct ieee80211_sta *sta, u16 tid,
				    u16 *ssn, u8 buf_size)
{
	struct iwl_mvm *mvm = FUNC1(hw);
	int ret;

	FUNC0(mvm, "A-MPDU action on addr %pM tid %d: action %d\n",
		     sta->addr, tid, action);

	if (!(mvm->nvm_data->sku_cap_11n_enable))
		return -EACCES;

	FUNC8(&mvm->mutex);

	switch (action) {
	case IEEE80211_AMPDU_RX_START:
		if (iwlwifi_mod_params.disable_11n & IWL_DISABLE_HT_RXAGG) {
			ret = -EINVAL;
			break;
		}
		ret = FUNC3(mvm, sta, tid, *ssn, true);
		break;
	case IEEE80211_AMPDU_RX_STOP:
		ret = FUNC3(mvm, sta, tid, 0, false);
		break;
	case IEEE80211_AMPDU_TX_START:
		if (iwlwifi_mod_params.disable_11n & IWL_DISABLE_HT_TXAGG) {
			ret = -EINVAL;
			break;
		}
		ret = FUNC6(mvm, vif, sta, tid, ssn);
		break;
	case IEEE80211_AMPDU_TX_STOP_CONT:
		ret = FUNC7(mvm, vif, sta, tid);
		break;
	case IEEE80211_AMPDU_TX_STOP_FLUSH:
	case IEEE80211_AMPDU_TX_STOP_FLUSH_CONT:
		ret = FUNC4(mvm, vif, sta, tid);
		break;
	case IEEE80211_AMPDU_TX_OPERATIONAL:
		ret = FUNC5(mvm, vif, sta, tid, buf_size);
		break;
	default:
		FUNC2(1);
		ret = -EINVAL;
		break;
	}
	FUNC9(&mvm->mutex);

	return ret;
}