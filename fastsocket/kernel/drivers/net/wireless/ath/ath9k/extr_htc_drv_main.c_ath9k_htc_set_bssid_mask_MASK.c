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
struct ieee80211_vif {int /*<<< orphan*/  addr; } ;
struct ath_common {int /*<<< orphan*/  bssidmask; int /*<<< orphan*/  macaddr; } ;
struct ath9k_vif_iter_data {int /*<<< orphan*/  mask; int /*<<< orphan*/  hw_macaddr; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  hw; int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_RESUME_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct ath9k_vif_iter_data*,int /*<<< orphan*/ ,struct ieee80211_vif*) ; 
 struct ath_common* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (struct ath9k_vif_iter_data*,int /*<<< orphan*/ ,struct ieee80211_vif*),struct ath9k_vif_iter_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ath9k_htc_priv *priv,
				     struct ieee80211_vif *vif)
{
	struct ath_common *common = FUNC1(priv->ah);
	struct ath9k_vif_iter_data iter_data;

	/*
	 * Use the hardware MAC address as reference, the hardware uses it
	 * together with the BSSID mask when matching addresses.
	 */
	iter_data.hw_macaddr = common->macaddr;
	FUNC5(&iter_data.mask, 0xff, ETH_ALEN);

	if (vif)
		FUNC0(&iter_data, vif->addr, vif);

	/* Get list of all active MAC addresses */
	FUNC3(
		priv->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
		ath9k_htc_bssid_iter, &iter_data);

	FUNC4(common->bssidmask, iter_data.mask, ETH_ALEN);
	FUNC2(common);
}