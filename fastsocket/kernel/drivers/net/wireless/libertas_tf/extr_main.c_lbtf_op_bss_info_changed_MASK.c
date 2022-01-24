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
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct lbtf_private {int /*<<< orphan*/  preamble; TYPE_1__* vif; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct lbtf_private* priv; } ;
struct ieee80211_bss_conf {scalar_t__ use_short_preamble; int /*<<< orphan*/  bssid; int /*<<< orphan*/  beacon_int; } ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
 int BSS_CHANGED_BEACON ; 
 int BSS_CHANGED_BEACON_INT ; 
 int BSS_CHANGED_BSSID ; 
 int BSS_CHANGED_ERP_PREAMBLE ; 
 int /*<<< orphan*/  CMD_TYPE_LONG_PREAMBLE ; 
 int /*<<< orphan*/  CMD_TYPE_SHORT_PREAMBLE ; 
 int /*<<< orphan*/  LBTF_DEB_MACOPS ; 
#define  NL80211_IFTYPE_AP 129 
#define  NL80211_IFTYPE_MESH_POINT 128 
 struct sk_buff* FUNC0 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct lbtf_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lbtf_private*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct lbtf_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct lbtf_private*) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_hw *hw,
			struct ieee80211_vif *vif,
			struct ieee80211_bss_conf *bss_conf,
			u32 changes)
{
	struct lbtf_private *priv = hw->priv;
	struct sk_buff *beacon;
	FUNC5(LBTF_DEB_MACOPS);

	if (changes & (BSS_CHANGED_BEACON | BSS_CHANGED_BEACON_INT)) {
		switch (priv->vif->type) {
		case NL80211_IFTYPE_AP:
		case NL80211_IFTYPE_MESH_POINT:
			beacon = FUNC0(hw, vif);
			if (beacon) {
				FUNC4(priv, beacon);
				FUNC2(beacon);
				FUNC3(priv, 1,
						 bss_conf->beacon_int);
			}
			break;
		default:
			break;
		}
	}

	if (changes & BSS_CHANGED_BSSID) {
		bool activate = !FUNC1(bss_conf->bssid);
		FUNC7(priv, activate, bss_conf->bssid);
	}

	if (changes & BSS_CHANGED_ERP_PREAMBLE) {
		if (bss_conf->use_short_preamble)
			priv->preamble = CMD_TYPE_SHORT_PREAMBLE;
		else
			priv->preamble = CMD_TYPE_LONG_PREAMBLE;
		FUNC8(priv);
	}

	FUNC6(LBTF_DEB_MACOPS);
}