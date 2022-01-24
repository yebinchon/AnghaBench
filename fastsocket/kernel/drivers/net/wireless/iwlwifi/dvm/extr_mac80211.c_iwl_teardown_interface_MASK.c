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
struct iwl_rxon_context {int is_active; int /*<<< orphan*/  always_active; } ;
struct iwl_priv {int /*<<< orphan*/  last_bt_traffic_load; int /*<<< orphan*/  bt_traffic_load; struct ieee80211_vif* scan_vif; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*) ; 
 struct iwl_rxon_context* FUNC1 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*,struct iwl_rxon_context*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct iwl_priv *priv,
				   struct ieee80211_vif *vif,
				   bool mode_change)
{
	struct iwl_rxon_context *ctx = FUNC1(vif);

	FUNC4(&priv->mutex);

	if (priv->scan_vif == vif) {
		FUNC2(priv, 200);
		FUNC0(priv);
	}

	if (!mode_change) {
		FUNC3(priv, ctx);
		if (!ctx->always_active)
			ctx->is_active = false;
	}

	/*
	 * When removing the IBSS interface, overwrite the
	 * BT traffic load with the stored one from the last
	 * notification, if any. If this is a device that
	 * doesn't implement this, this has no effect since
	 * both values are the same and zero.
	 */
	if (vif->type == NL80211_IFTYPE_ADHOC)
		priv->bt_traffic_load = priv->last_bt_traffic_load;
}