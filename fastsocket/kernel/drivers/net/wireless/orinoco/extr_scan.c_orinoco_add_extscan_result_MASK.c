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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct wiphy {int dummy; } ;
struct orinoco_private {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_bss {int dummy; } ;
struct agere_ext_scan_info {int* data; int /*<<< orphan*/  bssid; int /*<<< orphan*/  level; int /*<<< orphan*/  beacon_interval; int /*<<< orphan*/  capabilities; int /*<<< orphan*/  timestamp; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WLAN_EID_DS_PARAMS ; 
 int* FUNC1 (int /*<<< orphan*/ ,int*,size_t) ; 
 struct cfg80211_bss* FUNC2 (struct wiphy*,struct ieee80211_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wiphy*,struct cfg80211_bss*) ; 
 int FUNC4 (int) ; 
 struct ieee80211_channel* FUNC5 (struct wiphy*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct wiphy* FUNC8 (struct orinoco_private*) ; 

void FUNC9(struct orinoco_private *priv,
				struct agere_ext_scan_info *bss,
				size_t len)
{
	struct wiphy *wiphy = FUNC8(priv);
	struct ieee80211_channel *channel;
	struct cfg80211_bss *cbss;
	const u8 *ie;
	u64 timestamp;
	s32 signal;
	u16 capability;
	u16 beacon_interval;
	size_t ie_len;
	int chan, freq;

	ie_len = len - sizeof(*bss);
	ie = FUNC1(WLAN_EID_DS_PARAMS, bss->data, ie_len);
	chan = ie ? ie[2] : 0;
	freq = FUNC4(chan);
	channel = FUNC5(wiphy, freq);

	timestamp = FUNC7(bss->timestamp);
	capability = FUNC6(bss->capabilities);
	beacon_interval = FUNC6(bss->beacon_interval);
	ie = bss->data;
	signal = FUNC0(bss->level);

	cbss = FUNC2(wiphy, channel, bss->bssid, timestamp,
				   capability, beacon_interval, ie, ie_len,
				   signal, GFP_KERNEL);
	FUNC3(wiphy, cbss);
}