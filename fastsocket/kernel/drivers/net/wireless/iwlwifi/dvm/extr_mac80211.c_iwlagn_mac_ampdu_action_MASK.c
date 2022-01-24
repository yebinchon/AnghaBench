#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_13__ {int /*<<< orphan*/  flags; } ;
struct TYPE_16__ {TYPE_5__ general_params; } ;
struct TYPE_14__ {TYPE_8__ lq; } ;
struct iwl_station_priv {TYPE_6__ lq_sta; } ;
struct TYPE_12__ {int /*<<< orphan*/  use_rts_for_aggregation; } ;
struct iwl_priv {int /*<<< orphan*/  mutex; TYPE_4__ hw_params; int /*<<< orphan*/  agg_tids_count; TYPE_3__* trans; TYPE_1__* nvm_data; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum ieee80211_ampdu_mlme_action { ____Placeholder_ieee80211_ampdu_mlme_action } ieee80211_ampdu_mlme_action ;
struct TYPE_15__ {int disable_11n; } ;
struct TYPE_11__ {TYPE_2__* ops; } ;
struct TYPE_10__ {int /*<<< orphan*/  txq_enable; } ;
struct TYPE_9__ {int /*<<< orphan*/  sku_cap_11n_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ASYNC ; 
 int EACCES ; 
 int EINVAL ; 
#define  IEEE80211_AMPDU_RX_START 134 
#define  IEEE80211_AMPDU_RX_STOP 133 
#define  IEEE80211_AMPDU_TX_OPERATIONAL 132 
#define  IEEE80211_AMPDU_TX_START 131 
#define  IEEE80211_AMPDU_TX_STOP_CONT 130 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH 129 
#define  IEEE80211_AMPDU_TX_STOP_FLUSH_CONT 128 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*) ; 
 int IWL_DISABLE_HT_RXAGG ; 
 int IWL_DISABLE_HT_TXAGG ; 
 struct iwl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  LINK_QUAL_FLAGS_SET_STA_TLC_RTS_MSK ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_priv*,int /*<<< orphan*/ ,TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct iwl_priv*,struct ieee80211_sta*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct iwl_priv*,struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct iwl_priv*,struct ieee80211_vif*,struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct iwl_priv*,struct ieee80211_vif*,struct ieee80211_sta*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct iwl_priv*,struct ieee80211_vif*,struct ieee80211_sta*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct iwl_priv*,struct ieee80211_vif*,struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 TYPE_7__ iwlwifi_mod_params ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct ieee80211_hw *hw,
				   struct ieee80211_vif *vif,
				   enum ieee80211_ampdu_mlme_action action,
				   struct ieee80211_sta *sta, u16 tid, u16 *ssn,
				   u8 buf_size)
{
	struct iwl_priv *priv = FUNC2(hw);
	int ret = -EINVAL;
	struct iwl_station_priv *sta_priv = (void *) sta->drv_priv;

	FUNC0(priv, "A-MPDU action on addr %pM tid %d\n",
		     sta->addr, tid);

	if (!(priv->nvm_data->sku_cap_11n_enable))
		return -EACCES;

	FUNC1(priv, "enter\n");
	FUNC11(&priv->mutex);

	switch (action) {
	case IEEE80211_AMPDU_RX_START:
		if (iwlwifi_mod_params.disable_11n & IWL_DISABLE_HT_RXAGG)
			break;
		FUNC0(priv, "start Rx\n");
		ret = FUNC5(priv, sta, tid, *ssn);
		break;
	case IEEE80211_AMPDU_RX_STOP:
		FUNC0(priv, "stop Rx\n");
		ret = FUNC6(priv, sta, tid);
		break;
	case IEEE80211_AMPDU_TX_START:
		if (!priv->trans->ops->txq_enable)
			break;
		if (iwlwifi_mod_params.disable_11n & IWL_DISABLE_HT_TXAGG)
			break;
		FUNC0(priv, "start Tx\n");
		ret = FUNC9(priv, vif, sta, tid, ssn);
		break;
	case IEEE80211_AMPDU_TX_STOP_FLUSH:
	case IEEE80211_AMPDU_TX_STOP_FLUSH_CONT:
		FUNC0(priv, "Flush Tx\n");
		ret = FUNC7(priv, vif, sta, tid);
		break;
	case IEEE80211_AMPDU_TX_STOP_CONT:
		FUNC0(priv, "stop Tx\n");
		ret = FUNC10(priv, vif, sta, tid);
		if ((ret == 0) && (priv->agg_tids_count > 0)) {
			priv->agg_tids_count--;
			FUNC0(priv, "priv->agg_tids_count = %u\n",
				     priv->agg_tids_count);
		}
		if (!priv->agg_tids_count &&
		    priv->hw_params.use_rts_for_aggregation) {
			/*
			 * switch off RTS/CTS if it was previously enabled
			 */
			sta_priv->lq_sta.lq.general_params.flags &=
				~LINK_QUAL_FLAGS_SET_STA_TLC_RTS_MSK;
			FUNC4(priv, FUNC3(vif),
					&sta_priv->lq_sta.lq, CMD_ASYNC, false);
		}
		break;
	case IEEE80211_AMPDU_TX_OPERATIONAL:
		ret = FUNC8(priv, vif, sta, tid, buf_size);
		break;
	}
	FUNC12(&priv->mutex);
	FUNC1(priv, "leave\n");
	return ret;
}