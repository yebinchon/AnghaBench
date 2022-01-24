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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct iwl_priv {scalar_t__ bt_traffic_load; } ;
struct iwl_lq_sta {int dummy; } ;
struct ieee80211_sta {scalar_t__ addr; } ;
struct TYPE_2__ {scalar_t__ auto_agg; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ IWL_AGG_LOAD_THRESHOLD ; 
 scalar_t__ IWL_BT_COEX_TRAFFIC_LOAD_HIGH ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,char*,scalar_t__) ; 
 int FUNC3 (struct ieee80211_sta*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sta*,scalar_t__) ; 
 TYPE_1__ iwlwifi_mod_params ; 
 scalar_t__ FUNC5 (struct iwl_lq_sta*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct iwl_priv *priv,
				      struct iwl_lq_sta *lq_data, u8 tid,
				      struct ieee80211_sta *sta)
{
	int ret = -EAGAIN;
	u32 load;

	/*
	 * Don't create TX aggregation sessions when in high
	 * BT traffic, as they would just be disrupted by BT.
	 */
	if (priv->bt_traffic_load >= IWL_BT_COEX_TRAFFIC_LOAD_HIGH) {
		FUNC0(priv,
			       "BT traffic (%d), no aggregation allowed\n",
			       priv->bt_traffic_load);
		return ret;
	}

	load = FUNC5(lq_data, tid);

	if ((iwlwifi_mod_params.auto_agg) || (load > IWL_AGG_LOAD_THRESHOLD)) {
		FUNC1(priv, "Starting Tx agg: STA: %pM tid: %d\n",
				sta->addr, tid);
		ret = FUNC3(sta, tid, 5000);
		if (ret == -EAGAIN) {
			/*
			 * driver and mac80211 is out of sync
			 * this might be cause by reloading firmware
			 * stop the tx ba session here
			 */
			FUNC2(priv, "Fail start Tx agg on tid: %d\n",
				tid);
			FUNC4(sta, tid);
		}
	} else {
		FUNC1(priv, "Aggregation not enabled for tid %d "
			"because load = %u\n", tid, load);
	}
	return ret;
}