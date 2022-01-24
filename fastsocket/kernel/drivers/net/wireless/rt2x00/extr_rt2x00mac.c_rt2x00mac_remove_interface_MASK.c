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
struct rt2x00_intf {TYPE_1__* beacon; } ;
struct rt2x00_dev {int /*<<< orphan*/  intf_sta_count; int /*<<< orphan*/  intf_ap_count; int /*<<< orphan*/  flags; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_STATE_PRESENT ; 
 int /*<<< orphan*/  ENTRY_BCN_ASSIGNED ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  NL80211_IFTYPE_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,struct rt2x00_intf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct rt2x00_intf* FUNC3 (struct ieee80211_vif*) ; 

void FUNC4(struct ieee80211_hw *hw,
				struct ieee80211_vif *vif)
{
	struct rt2x00_dev *rt2x00dev = hw->priv;
	struct rt2x00_intf *intf = FUNC3(vif);

	/*
	 * Don't allow interfaces to be remove while
	 * either the device has disappeared or when
	 * no interface is present.
	 */
	if (!FUNC2(DEVICE_STATE_PRESENT, &rt2x00dev->flags) ||
	    (vif->type == NL80211_IFTYPE_AP && !rt2x00dev->intf_ap_count) ||
	    (vif->type != NL80211_IFTYPE_AP && !rt2x00dev->intf_sta_count))
		return;

	if (vif->type == NL80211_IFTYPE_AP)
		rt2x00dev->intf_ap_count--;
	else
		rt2x00dev->intf_sta_count--;

	/*
	 * Release beacon entry so it is available for
	 * new interfaces again.
	 */
	FUNC0(ENTRY_BCN_ASSIGNED, &intf->beacon->flags);

	/*
	 * Make sure the bssid and mac address registers
	 * are cleared to prevent false ACKing of frames.
	 */
	FUNC1(rt2x00dev, intf,
			      NL80211_IFTYPE_UNSPECIFIED, NULL, NULL);
}