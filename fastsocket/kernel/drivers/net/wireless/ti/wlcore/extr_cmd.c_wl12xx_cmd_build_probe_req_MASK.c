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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct wl12xx_vif {int /*<<< orphan*/ * bitrate_masks; } ;
struct wl1271 {int quirks; int /*<<< orphan*/  sched_scan_templ_id_5; int /*<<< orphan*/  sched_scan_templ_id_2_4; int /*<<< orphan*/  hw; int /*<<< orphan*/  scan_templ_id_5; int /*<<< orphan*/  scan_templ_id_2_4; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_SCAN ; 
 int ENOMEM ; 
 size_t IEEE80211_BAND_2GHZ ; 
 int WLCORE_QUIRK_DUAL_PROBE_TMPL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,struct ieee80211_vif*,size_t const*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,size_t) ; 
 int FUNC4 (struct wl1271*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wl1271*,int /*<<< orphan*/ ) ; 
 struct ieee80211_vif* FUNC7 (struct wl12xx_vif*) ; 

int FUNC8(struct wl1271 *wl, struct wl12xx_vif *wlvif,
			       u8 role_id, u8 band,
			       const u8 *ssid, size_t ssid_len,
			       const u8 *ie, size_t ie_len, bool sched_scan)
{
	struct ieee80211_vif *vif = FUNC7(wlvif);
	struct sk_buff *skb;
	int ret;
	u32 rate;
	u16 template_id_2_4 = wl->scan_templ_id_2_4;
	u16 template_id_5 = wl->scan_templ_id_5;

	skb = FUNC1(wl->hw, vif, ssid, ssid_len,
				     ie_len);
	if (!skb) {
		ret = -ENOMEM;
		goto out;
	}
	if (ie_len)
		FUNC2(FUNC3(skb, ie_len), ie, ie_len);

	FUNC5(DEBUG_SCAN, "PROBE REQ: ", skb->data, skb->len);

	if (sched_scan &&
	    (wl->quirks & WLCORE_QUIRK_DUAL_PROBE_TMPL)) {
		template_id_2_4 = wl->sched_scan_templ_id_2_4;
		template_id_5 = wl->sched_scan_templ_id_5;
	}

	rate = FUNC6(wl, wlvif->bitrate_masks[band]);
	if (band == IEEE80211_BAND_2GHZ)
		ret = FUNC4(wl, role_id,
					      template_id_2_4,
					      skb->data, skb->len, 0, rate);
	else
		ret = FUNC4(wl, role_id,
					      template_id_5,
					      skb->data, skb->len, 0, rate);

out:
	FUNC0(skb);
	return ret;
}