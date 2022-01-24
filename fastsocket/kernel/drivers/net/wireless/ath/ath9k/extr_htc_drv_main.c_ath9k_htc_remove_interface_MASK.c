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
typedef  int /*<<< orphan*/  u8 ;
struct ieee80211_vif {int /*<<< orphan*/  type; int /*<<< orphan*/  addr; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_vif {int index; } ;
struct ath9k_htc_target_vif {int index; int /*<<< orphan*/  myaddr; } ;
struct ath9k_htc_priv {int vif_slot; scalar_t__ num_ap_vif; int rearm_ani; int /*<<< orphan*/  mutex; int /*<<< orphan*/  hw; int /*<<< orphan*/  nvifs; int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct ath9k_htc_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_RESUME_ALL ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ath9k_htc_target_vif*) ; 
 int /*<<< orphan*/  WMI_VAP_REMOVE_CMDID ; 
 int /*<<< orphan*/  FUNC2 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath9k_htc_priv*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath9k_htc_priv*,struct ieee80211_vif*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ath9k_htc_priv*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  ath9k_htc_vif_iter ; 
 struct ath_common* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_common*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_common*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ath9k_htc_target_vif*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct ieee80211_hw *hw,
				       struct ieee80211_vif *vif)
{
	struct ath9k_htc_priv *priv = hw->priv;
	struct ath_common *common = FUNC9(priv->ah);
	struct ath9k_htc_vif *avp = (void *)vif->drv_priv;
	struct ath9k_htc_target_vif hvif;
	int ret = 0;
	u8 cmd_rsp;

	FUNC15(&priv->mutex);
	FUNC3(priv);

	FUNC14(&hvif, 0, sizeof(struct ath9k_htc_target_vif));
	FUNC13(&hvif.myaddr, vif->addr, ETH_ALEN);
	hvif.index = avp->index;
	FUNC1(WMI_VAP_REMOVE_CMDID, &hvif);
	if (ret) {
		FUNC11(common, "Unable to remove interface at idx: %d\n",
			avp->index);
	}
	priv->nvifs--;
	priv->vif_slot &= ~(1 << avp->index);

	FUNC5(priv, vif, NULL);

	FUNC0(priv, vif->type);

	if ((vif->type == NL80211_IFTYPE_AP) ||
	    (vif->type == NL80211_IFTYPE_ADHOC))
		FUNC4(priv, vif);

	FUNC7(priv);

	FUNC6(priv, vif);

	/*
	 * Stop ANI only if there are no associated station interfaces.
	 */
	if ((vif->type == NL80211_IFTYPE_AP) && (priv->num_ap_vif == 0)) {
		priv->rearm_ani = false;
		FUNC12(
			priv->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
			ath9k_htc_vif_iter, priv);
		if (!priv->rearm_ani)
			FUNC8(priv);
	}

	FUNC10(common, CONFIG, "Detach Interface at idx: %d\n", avp->index);

	FUNC2(priv);
	FUNC16(&priv->mutex);
}