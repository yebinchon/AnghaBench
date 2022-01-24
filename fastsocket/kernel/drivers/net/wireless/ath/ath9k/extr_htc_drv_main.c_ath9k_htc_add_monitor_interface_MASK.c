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
typedef  int /*<<< orphan*/  u8 ;
struct ath_common {int /*<<< orphan*/  macaddr; } ;
struct ath9k_htc_target_vif {int index; int is_vif_sta; int sta_index; int vif_index; int /*<<< orphan*/  maxampdu; int /*<<< orphan*/  macaddr; int /*<<< orphan*/  opmode; int /*<<< orphan*/  myaddr; } ;
struct ath9k_htc_target_sta {int index; int is_vif_sta; int sta_index; int vif_index; int /*<<< orphan*/  maxampdu; int /*<<< orphan*/  macaddr; int /*<<< orphan*/  opmode; int /*<<< orphan*/  myaddr; } ;
struct ath9k_htc_priv {scalar_t__ nvifs; int nstations; int sta_slot; int vif_slot; int mon_vif_idx; int* vif_sta_pos; TYPE_1__* ah; } ;
struct TYPE_2__ {int is_monitoring; int /*<<< orphan*/  opmode; } ;

/* Variables and functions */
 int ATH9K_HTC_MAX_STA ; 
 scalar_t__ ATH9K_HTC_MAX_VIF ; 
 int /*<<< orphan*/  CONFIG ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  HTC_M_MONITOR ; 
 int /*<<< orphan*/  NL80211_IFTYPE_MONITOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ath9k_htc_target_vif*) ; 
 int /*<<< orphan*/  WMI_NODE_CREATE_CMDID ; 
 int /*<<< orphan*/  WMI_VAP_CREATE_CMDID ; 
 int /*<<< orphan*/  FUNC1 (struct ath9k_htc_priv*) ; 
 struct ath_common* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ath9k_htc_target_vif*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct ath9k_htc_priv *priv)
{
	struct ath_common *common = FUNC2(priv->ah);
	struct ath9k_htc_target_vif hvif;
	struct ath9k_htc_target_sta tsta;
	int ret = 0, sta_idx;
	u8 cmd_rsp;

	if ((priv->nvifs >= ATH9K_HTC_MAX_VIF) ||
	    (priv->nstations >= ATH9K_HTC_MAX_STA)) {
		ret = -ENOBUFS;
		goto err_vif;
	}

	sta_idx = FUNC6(priv->sta_slot);
	if ((sta_idx < 0) || (sta_idx > ATH9K_HTC_MAX_STA)) {
		ret = -ENOBUFS;
		goto err_vif;
	}

	/*
	 * Add an interface.
	 */
	FUNC8(&hvif, 0, sizeof(struct ath9k_htc_target_vif));
	FUNC7(&hvif.myaddr, common->macaddr, ETH_ALEN);

	hvif.opmode = HTC_M_MONITOR;
	hvif.index = FUNC6(priv->vif_slot);

	FUNC0(WMI_VAP_CREATE_CMDID, &hvif);
	if (ret)
		goto err_vif;

	/*
	 * Assign the monitor interface index as a special case here.
	 * This is needed when the interface is brought down.
	 */
	priv->mon_vif_idx = hvif.index;
	priv->vif_slot |= (1 << hvif.index);

	/*
	 * Set the hardware mode to monitor only if there are no
	 * other interfaces.
	 */
	if (!priv->nvifs)
		priv->ah->opmode = NL80211_IFTYPE_MONITOR;

	priv->nvifs++;

	/*
	 * Associate a station with the interface for packet injection.
	 */
	FUNC8(&tsta, 0, sizeof(struct ath9k_htc_target_sta));

	FUNC7(&tsta.macaddr, common->macaddr, ETH_ALEN);

	tsta.is_vif_sta = 1;
	tsta.sta_index = sta_idx;
	tsta.vif_index = hvif.index;
	tsta.maxampdu = FUNC5(0xffff);

	FUNC0(WMI_NODE_CREATE_CMDID, &tsta);
	if (ret) {
		FUNC4(common, "Unable to add station entry for monitor mode\n");
		goto err_sta;
	}

	priv->sta_slot |= (1 << sta_idx);
	priv->nstations++;
	priv->vif_sta_pos[priv->mon_vif_idx] = sta_idx;
	priv->ah->is_monitoring = true;

	FUNC3(common, CONFIG,
		"Attached a monitor interface at idx: %d, sta idx: %d\n",
		priv->mon_vif_idx, sta_idx);

	return 0;

err_sta:
	/*
	 * Remove the interface from the target.
	 */
	FUNC1(priv);
err_vif:
	FUNC3(common, FATAL, "Unable to attach a monitor interface\n");

	return ret;
}