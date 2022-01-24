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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  last_update; int /*<<< orphan*/  interval; int /*<<< orphan*/  period; } ;
struct zd_mac {scalar_t__ type; int associated; int /*<<< orphan*/  lock; int /*<<< orphan*/  short_preamble; int /*<<< orphan*/  chip; TYPE_1__ beacon; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_bss_conf {int /*<<< orphan*/  use_short_preamble; int /*<<< orphan*/  bssid; int /*<<< orphan*/  beacon_int; int /*<<< orphan*/  dtim_period; scalar_t__ enable_beacon; } ;

/* Variables and functions */
 int BSS_CHANGED_BEACON ; 
 int BSS_CHANGED_BEACON_ENABLED ; 
 int BSS_CHANGED_ERP_PREAMBLE ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_MESH_POINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct sk_buff* FUNC1 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct zd_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct zd_mac* FUNC8 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct zd_mac*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC12(struct ieee80211_hw *hw,
				   struct ieee80211_vif *vif,
				   struct ieee80211_bss_conf *bss_conf,
				   u32 changes)
{
	struct zd_mac *mac = FUNC8(hw);
	int associated;

	FUNC0(FUNC10(mac), "changes: %x\n", changes);

	if (mac->type == NL80211_IFTYPE_MESH_POINT ||
	    mac->type == NL80211_IFTYPE_ADHOC ||
	    mac->type == NL80211_IFTYPE_AP) {
		associated = true;
		if (changes & BSS_CHANGED_BEACON) {
			struct sk_buff *beacon = FUNC1(hw, vif);

			if (beacon) {
				FUNC6(&mac->chip);
				FUNC9(hw, beacon, false);
				FUNC7(&mac->chip);
			}
		}

		if (changes & BSS_CHANGED_BEACON_ENABLED) {
			u16 interval = 0;
			u8 period = 0;

			if (bss_conf->enable_beacon) {
				period = bss_conf->dtim_period;
				interval = bss_conf->beacon_int;
			}

			FUNC4(&mac->lock);
			mac->beacon.period = period;
			mac->beacon.interval = interval;
			mac->beacon.last_update = jiffies;
			FUNC5(&mac->lock);

			FUNC11(&mac->chip, interval, period,
					       mac->type);
		}
	} else
		associated = FUNC2(bss_conf->bssid);

	FUNC4(&mac->lock);
	mac->associated = associated;
	FUNC5(&mac->lock);

	/* TODO: do hardware bssid filtering */

	if (changes & BSS_CHANGED_ERP_PREAMBLE) {
		FUNC4(&mac->lock);
		mac->short_preamble = bss_conf->use_short_preamble;
		FUNC5(&mac->lock);

		FUNC3(mac, bss_conf->use_short_preamble);
	}
}