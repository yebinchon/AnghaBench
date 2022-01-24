#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {size_t hlid; int /*<<< orphan*/  role_chan_type; } ;
struct wl12xx_vif {scalar_t__ band; int basic_rate_set; TYPE_3__ sta; int /*<<< orphan*/  channel_type; int /*<<< orphan*/  rate_set; int /*<<< orphan*/  role_id; scalar_t__ p2p; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid; int /*<<< orphan*/  beacon_int; int /*<<< orphan*/  channel; } ;
struct TYPE_5__ {size_t hlid; int /*<<< orphan*/  session; void* remote_rates; void* local_rates; int /*<<< orphan*/  bssid; int /*<<< orphan*/  ssid; int /*<<< orphan*/  ssid_len; int /*<<< orphan*/  ssid_type; int /*<<< orphan*/  beacon_interval; void* basic_rate_set; } ;
struct wl12xx_cmd_role_start {TYPE_2__ sta; int /*<<< orphan*/  channel_type; int /*<<< orphan*/  channel; int /*<<< orphan*/  band; int /*<<< orphan*/  role_id; } ;
struct wl1271 {int /*<<< orphan*/ * session_ids; } ;
struct TYPE_4__ {int /*<<< orphan*/  bssid; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ROLE_START ; 
 int CONF_TX_CCK_RATES ; 
 int CONF_TX_ENABLED_RATES ; 
 int CONF_TX_MCS_RATES ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IEEE80211_BAND_5GHZ ; 
 size_t WL12XX_INVALID_LINK_ID ; 
 int /*<<< orphan*/  WL12XX_SSID_TYPE_ANY ; 
 int /*<<< orphan*/  WLCORE_BAND_5GHZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wl12xx_cmd_role_start*) ; 
 struct wl12xx_cmd_role_start* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct wl1271*,int /*<<< orphan*/ ,struct wl12xx_cmd_role_start*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (struct wl1271*,struct wl12xx_vif*,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (struct wl1271*,struct wl12xx_vif*,size_t*) ; 
 struct ieee80211_vif* FUNC10 (struct wl12xx_vif*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct wl1271*,struct wl12xx_vif*) ; 

int FUNC13(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
	struct ieee80211_vif *vif = FUNC10(wlvif);
	struct wl12xx_cmd_role_start *cmd;
	u32 supported_rates;
	int ret;

	cmd = FUNC3(sizeof(*cmd), GFP_KERNEL);
	if (!cmd) {
		ret = -ENOMEM;
		goto out;
	}

	FUNC6(DEBUG_CMD, "cmd role start sta %d", wlvif->role_id);

	cmd->role_id = wlvif->role_id;
	if (wlvif->band == IEEE80211_BAND_5GHZ)
		cmd->band = WLCORE_BAND_5GHZ;
	cmd->channel = wlvif->channel;
	cmd->sta.basic_rate_set = FUNC1(wlvif->basic_rate_set);
	cmd->sta.beacon_interval = FUNC0(wlvif->beacon_int);
	cmd->sta.ssid_type = WL12XX_SSID_TYPE_ANY;
	cmd->sta.ssid_len = wlvif->ssid_len;
	FUNC4(cmd->sta.ssid, wlvif->ssid, wlvif->ssid_len);
	FUNC4(cmd->sta.bssid, vif->bss_conf.bssid, ETH_ALEN);

	supported_rates = CONF_TX_ENABLED_RATES | CONF_TX_MCS_RATES |
			  FUNC12(wl, wlvif);
	if (wlvif->p2p)
		supported_rates &= ~CONF_TX_CCK_RATES;

	cmd->sta.local_rates = FUNC1(supported_rates);

	cmd->channel_type = FUNC11(wlvif->channel_type);

	if (wlvif->sta.hlid == WL12XX_INVALID_LINK_ID) {
		ret = FUNC8(wl, wlvif, &wlvif->sta.hlid);
		if (ret)
			goto out_free;
	}
	cmd->sta.hlid = wlvif->sta.hlid;
	cmd->sta.session = wl->session_ids[wlvif->sta.hlid];
	/*
	 * We don't have the correct remote rates in this stage.  The
	 * rates will be reconfigured later, after association, if the
	 * firmware supports ACX_PEER_CAP.  Otherwise, there's nothing
	 * we can do, so use all supported_rates here.
	 */
	cmd->sta.remote_rates = FUNC1(supported_rates);

	FUNC6(DEBUG_CMD, "role start: roleid=%d, hlid=%d, session=%d "
		     "basic_rate_set: 0x%x, remote_rates: 0x%x",
		     wlvif->role_id, cmd->sta.hlid, cmd->sta.session,
		     wlvif->basic_rate_set, wlvif->rate_set);

	ret = FUNC5(wl, CMD_ROLE_START, cmd, sizeof(*cmd), 0);
	if (ret < 0) {
		FUNC7("failed to initiate cmd role start sta");
		goto err_hlid;
	}

	wlvif->sta.role_chan_type = wlvif->channel_type;
	goto out_free;

err_hlid:
	/* clear links on error. */
	FUNC9(wl, wlvif, &wlvif->sta.hlid);

out_free:
	FUNC2(cmd);

out:
	return ret;
}