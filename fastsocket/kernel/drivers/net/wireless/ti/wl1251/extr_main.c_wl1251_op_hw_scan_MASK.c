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
struct wl1251 {int scanning; int /*<<< orphan*/  mutex; int /*<<< orphan*/  vif; int /*<<< orphan*/  hw; int /*<<< orphan*/  dtim_period; int /*<<< orphan*/  beacon_int; int /*<<< orphan*/  channel; int /*<<< orphan*/  bss_type; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct ieee80211_hw {TYPE_2__ conf; struct wl1251* priv; } ;
struct cfg80211_scan_request {int /*<<< orphan*/  n_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/  ie_len; int /*<<< orphan*/  ie; TYPE_1__* ssids; scalar_t__ n_ssids; } ;
struct TYPE_3__ {size_t ssid_len; int /*<<< orphan*/ * ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_PROBE_REQ ; 
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int /*<<< orphan*/  DEBUG_SCAN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int IEEE80211_CONF_IDLE ; 
 int /*<<< orphan*/  STATION_ACTIVE_MODE ; 
 int /*<<< orphan*/  STATION_IDLE ; 
 int /*<<< orphan*/  WL1251_SCAN_NUM_PROBES ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct wl1251*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct wl1251*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct wl1251*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (struct wl1251*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct wl1251*) ; 
 int FUNC12 (struct wl1251*) ; 
 int FUNC13 (struct wl1251*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct ieee80211_hw *hw,
			     struct ieee80211_vif *vif,
			     struct cfg80211_scan_request *req)
{
	struct wl1251 *wl = hw->priv;
	struct sk_buff *skb;
	size_t ssid_len = 0;
	u8 *ssid = NULL;
	int ret;

	FUNC9(DEBUG_MAC80211, "mac80211 hw scan");

	if (req->n_ssids) {
		ssid = req->ssids[0].ssid;
		ssid_len = req->ssids[0].ssid_len;
	}

	FUNC3(&wl->mutex);

	if (wl->scanning) {
		FUNC9(DEBUG_SCAN, "scan already in progress");
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC12(wl);
	if (ret < 0)
		goto out;

	if (hw->conf.flags & IEEE80211_CONF_IDLE) {
		ret = FUNC13(wl, STATION_ACTIVE_MODE);
		if (ret < 0)
			goto out_sleep;
		ret = FUNC10(wl, wl->bss_type, wl->channel,
				  wl->beacon_int, wl->dtim_period);
		if (ret < 0)
			goto out_sleep;
	}

	skb = FUNC1(wl->hw, wl->vif, ssid, ssid_len,
				     req->ie_len);
	if (!skb) {
		ret = -ENOMEM;
		goto out_idle;
	}
	if (req->ie_len)
		FUNC2(FUNC5(skb, req->ie_len), req->ie, req->ie_len);

	ret = FUNC7(wl, CMD_PROBE_REQ, skb->data,
				      skb->len);
	FUNC0(skb);
	if (ret < 0)
		goto out_idle;

	ret = FUNC8(wl, 0);
	if (ret < 0)
		goto out_idle;

	wl->scanning = true;

	ret = FUNC6(wl, ssid, ssid_len, req->channels,
			      req->n_channels, WL1251_SCAN_NUM_PROBES);
	if (ret < 0) {
		wl->scanning = false;
		goto out_idle;
	}
	goto out_sleep;

out_idle:
	if (hw->conf.flags & IEEE80211_CONF_IDLE)
		ret = FUNC13(wl, STATION_IDLE);
out_sleep:
	FUNC11(wl);

out:
	FUNC4(&wl->mutex);

	return ret;
}