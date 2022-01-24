#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  smps; } ;
struct iwl_priv {int /*<<< orphan*/  dynamic_frag_thresh; int /*<<< orphan*/  bt_duration; int /*<<< orphan*/  bt_on_thresh; int /*<<< orphan*/  bt_valid; int /*<<< orphan*/  kill_cts_mask; int /*<<< orphan*/  kill_ack_mask; TYPE_4__* cfg; int /*<<< orphan*/ * contexts; int /*<<< orphan*/  rx_statistics_jiffies; int /*<<< orphan*/  ucode_owner; scalar_t__ agg_tids_count; int /*<<< orphan*/  missed_beacon_threshold; TYPE_2__ current_ht_config; int /*<<< orphan*/  iw_mode; int /*<<< orphan*/  plcp_delta_threshold; int /*<<< orphan*/  band; int /*<<< orphan*/  calib_results; int /*<<< orphan*/  mutex; int /*<<< orphan*/  sta_lock; } ;
struct TYPE_8__ {TYPE_3__* bt_params; TYPE_1__* base_params; } ;
struct TYPE_7__ {scalar_t__ advanced_bt_coexist; } ;
struct TYPE_5__ {int /*<<< orphan*/  plcp_delta_threshold; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_DURATION_LIMIT_DEF ; 
 int /*<<< orphan*/  BT_FRAG_THRESHOLD_DEF ; 
 int /*<<< orphan*/  BT_ON_THRESHOLD_DEF ; 
 int /*<<< orphan*/  IEEE80211_BAND_2GHZ ; 
 int /*<<< orphan*/  IEEE80211_SMPS_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IWLAGN_BT_ALL_VALID_MSK ; 
 int /*<<< orphan*/  IWLAGN_BT_KILL_ACK_MASK_DEFAULT ; 
 int /*<<< orphan*/  IWLAGN_BT_KILL_CTS_MASK_DEFAULT ; 
 int /*<<< orphan*/  IWL_MISSED_BEACON_THRESHOLD_DEF ; 
 int /*<<< orphan*/  IWL_OWNERSHIP_DRIVER ; 
 size_t IWL_RXON_CTX_BSS ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iwl_priv *priv)
{
	FUNC4(&priv->sta_lock);

	FUNC3(&priv->mutex);

	FUNC0(&priv->calib_results);

	priv->band = IEEE80211_BAND_2GHZ;

	priv->plcp_delta_threshold =
		priv->cfg->base_params->plcp_delta_threshold;

	priv->iw_mode = NL80211_IFTYPE_STATION;
	priv->current_ht_config.smps = IEEE80211_SMPS_STATIC;
	priv->missed_beacon_threshold = IWL_MISSED_BEACON_THRESHOLD_DEF;
	priv->agg_tids_count = 0;

	priv->ucode_owner = IWL_OWNERSHIP_DRIVER;

	priv->rx_statistics_jiffies = jiffies;

	/* Choose which receivers/antennas to use */
	FUNC2(priv, &priv->contexts[IWL_RXON_CTX_BSS]);

	FUNC1(priv);

	/* init bt coex */
	if (priv->cfg->bt_params &&
	    priv->cfg->bt_params->advanced_bt_coexist) {
		priv->kill_ack_mask = IWLAGN_BT_KILL_ACK_MASK_DEFAULT;
		priv->kill_cts_mask = IWLAGN_BT_KILL_CTS_MASK_DEFAULT;
		priv->bt_valid = IWLAGN_BT_ALL_VALID_MSK;
		priv->bt_on_thresh = BT_ON_THRESHOLD_DEF;
		priv->bt_duration = BT_DURATION_LIMIT_DEF;
		priv->dynamic_frag_thresh = BT_FRAG_THRESHOLD_DEF;
	}

	return 0;
}