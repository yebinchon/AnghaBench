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
typedef  int /*<<< orphan*/  u32 ;
struct wl12xx_vif {size_t band; int /*<<< orphan*/  role_id; int /*<<< orphan*/ * bitrate_masks; } ;
struct wl1271 {int /*<<< orphan*/  hw; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_TEMPL_CFG_PROBE_REQ_2_4 ; 
 int /*<<< orphan*/  CMD_TEMPL_CFG_PROBE_REQ_5 ; 
 int /*<<< orphan*/  DEBUG_SCAN ; 
 size_t IEEE80211_BAND_2GHZ ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,struct ieee80211_vif*) ; 
 int FUNC1 (struct wl1271*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wl1271*,int /*<<< orphan*/ ) ; 
 struct ieee80211_vif* FUNC5 (struct wl12xx_vif*) ; 

struct sk_buff *FUNC6(struct wl1271 *wl,
					      struct wl12xx_vif *wlvif,
					      struct sk_buff *skb)
{
	struct ieee80211_vif *vif = FUNC5(wlvif);
	int ret;
	u32 rate;

	if (!skb)
		skb = FUNC0(wl->hw, vif);
	if (!skb)
		goto out;

	FUNC2(DEBUG_SCAN, "AP PROBE REQ: ", skb->data, skb->len);

	rate = FUNC4(wl, wlvif->bitrate_masks[wlvif->band]);
	if (wlvif->band == IEEE80211_BAND_2GHZ)
		ret = FUNC1(wl, wlvif->role_id,
					      CMD_TEMPL_CFG_PROBE_REQ_2_4,
					      skb->data, skb->len, 0, rate);
	else
		ret = FUNC1(wl, wlvif->role_id,
					      CMD_TEMPL_CFG_PROBE_REQ_5,
					      skb->data, skb->len, 0, rate);

	if (ret < 0)
		FUNC3("Unable to set ap probe request template.");

out:
	return skb;
}