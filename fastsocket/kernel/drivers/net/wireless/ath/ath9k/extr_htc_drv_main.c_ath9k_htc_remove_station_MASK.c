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
typedef  int u8 ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_sta {size_t addr; scalar_t__ drv_priv; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_vif {size_t index; } ;
struct ath9k_htc_sta {int index; } ;
struct ath9k_htc_priv {int* vif_sta_pos; int sta_slot; int /*<<< orphan*/  nstations; int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  WMI_NODE_REMOVE_CMDID ; 
 struct ath_common* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*,int /*<<< orphan*/ ,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,char*,size_t) ; 

__attribute__((used)) static int FUNC4(struct ath9k_htc_priv *priv,
				    struct ieee80211_vif *vif,
				    struct ieee80211_sta *sta)
{
	struct ath_common *common = FUNC1(priv->ah);
	struct ath9k_htc_vif *avp = (struct ath9k_htc_vif *) vif->drv_priv;
	struct ath9k_htc_sta *ista;
	int ret;
	u8 cmd_rsp, sta_idx;

	if (sta) {
		ista = (struct ath9k_htc_sta *) sta->drv_priv;
		sta_idx = ista->index;
	} else {
		sta_idx = priv->vif_sta_pos[avp->index];
	}

	FUNC0(WMI_NODE_REMOVE_CMDID, &sta_idx);
	if (ret) {
		if (sta)
			FUNC3(common,
				"Unable to remove station entry for: %pM\n",
				sta->addr);
		return ret;
	}

	if (sta) {
		FUNC2(common, CONFIG,
			"Removed a station entry for: %pM (idx: %d)\n",
			sta->addr, sta_idx);
	} else {
		FUNC2(common, CONFIG,
			"Removed a station entry for VIF %d (idx: %d)\n",
			avp->index, sta_idx);
	}

	priv->sta_slot &= ~(1 << sta_idx);
	priv->nstations--;

	return 0;
}