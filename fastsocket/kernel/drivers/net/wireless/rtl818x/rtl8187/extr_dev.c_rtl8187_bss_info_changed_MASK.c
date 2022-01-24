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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  work; } ;
struct rtl8187_vif {TYPE_2__ beacon_work; scalar_t__ enable_beacon; } ;
struct rtl8187_priv {int /*<<< orphan*/  conf_mutex; TYPE_1__* map; scalar_t__ is_rtl8187b; } ;
struct ieee80211_vif {scalar_t__ type; int /*<<< orphan*/  drv_priv; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;
struct ieee80211_bss_conf {scalar_t__ enable_beacon; int /*<<< orphan*/  use_short_preamble; int /*<<< orphan*/  use_short_slot; int /*<<< orphan*/ * bssid; } ;
struct TYPE_3__ {int /*<<< orphan*/  MSR; int /*<<< orphan*/ * BSSID; } ;

/* Variables and functions */
 int BSS_CHANGED_BEACON ; 
 int BSS_CHANGED_BEACON_ENABLED ; 
 int BSS_CHANGED_BSSID ; 
 int BSS_CHANGED_ERP_PREAMBLE ; 
 int BSS_CHANGED_ERP_SLOT ; 
 int ETH_ALEN ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  RTL818X_MSR_ADHOC ; 
 int /*<<< orphan*/  RTL818X_MSR_ENEDCA ; 
 int /*<<< orphan*/  RTL818X_MSR_INFRA ; 
 int /*<<< orphan*/  RTL818X_MSR_NO_LINK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8187_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8187_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *dev,
				     struct ieee80211_vif *vif,
				     struct ieee80211_bss_conf *info,
				     u32 changed)
{
	struct rtl8187_priv *priv = dev->priv;
	struct rtl8187_vif *vif_priv;
	int i;
	u8 reg;

	vif_priv = (struct rtl8187_vif *)&vif->drv_priv;

	if (changed & BSS_CHANGED_BSSID) {
		FUNC2(&priv->conf_mutex);
		for (i = 0; i < ETH_ALEN; i++)
			FUNC5(priv, &priv->map->BSSID[i],
					 info->bssid[i]);

		if (priv->is_rtl8187b)
			reg = RTL818X_MSR_ENEDCA;
		else
			reg = 0;

		if (FUNC1(info->bssid)) {
			if (vif->type == NL80211_IFTYPE_ADHOC)
				reg |= RTL818X_MSR_ADHOC;
			else
				reg |= RTL818X_MSR_INFRA;
		}
		else
			reg |= RTL818X_MSR_NO_LINK;

		FUNC5(priv, &priv->map->MSR, reg);

		FUNC3(&priv->conf_mutex);
	}

	if (changed & (BSS_CHANGED_ERP_SLOT | BSS_CHANGED_ERP_PREAMBLE))
		FUNC4(priv, info->use_short_slot,
				 info->use_short_preamble);

	if (changed & BSS_CHANGED_BEACON_ENABLED)
		vif_priv->enable_beacon = info->enable_beacon;

	if (changed & (BSS_CHANGED_BEACON_ENABLED | BSS_CHANGED_BEACON)) {
		FUNC0(&vif_priv->beacon_work);
		if (vif_priv->enable_beacon)
			FUNC6(&vif_priv->beacon_work.work);
	}

}