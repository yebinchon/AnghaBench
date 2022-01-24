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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {int status; } ;
struct TYPE_5__ {unsigned int num_channels; unsigned int num_probe_requests; size_t ssid_len; int /*<<< orphan*/  ssid; scalar_t__ tid_trigger; int /*<<< orphan*/  tx_rate; scalar_t__ scan_options; void* rx_filter_options; void* rx_config_options; } ;
struct wl1251_cmd_scan {TYPE_3__ header; TYPE_2__ params; TYPE_1__* channels; } ;
struct wl1251 {int /*<<< orphan*/  cmd_box_addr; } ;
struct ieee80211_channel {int /*<<< orphan*/  hw_value; } ;
struct TYPE_4__ {int /*<<< orphan*/  channel; scalar_t__ tx_power_att; scalar_t__ early_termination; int /*<<< orphan*/  bssid_msb; int /*<<< orphan*/  bssid_lsb; void* max_duration; void* min_duration; } ;

/* Variables and functions */
 int CFG_RX_ALL_GOOD ; 
 int CFG_RX_BCN_EN ; 
 int CFG_RX_MGMT_EN ; 
 int CFG_RX_PRSP_EN ; 
 int /*<<< orphan*/  CMD_SCAN ; 
 int CMD_STATUS_SUCCESS ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int WL1251_SCAN_MAX_DURATION ; 
 int WL1251_SCAN_MIN_DURATION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wl1251_cmd_scan*) ; 
 struct wl1251_cmd_scan* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (struct wl1251*,int /*<<< orphan*/ ,struct wl1251_cmd_scan*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct wl1251*,int /*<<< orphan*/ ,struct wl1251_cmd_scan*,int) ; 

int FUNC10(struct wl1251 *wl, u8 *ssid, size_t ssid_len,
		    struct ieee80211_channel *channels[],
		    unsigned int n_channels, unsigned int n_probes)
{
	struct wl1251_cmd_scan *cmd;
	int i, ret = 0;

	FUNC7(DEBUG_CMD, "cmd scan");

	cmd = FUNC3(sizeof(*cmd), GFP_KERNEL);
	if (!cmd)
		return -ENOMEM;

	cmd->params.rx_config_options = FUNC1(CFG_RX_ALL_GOOD);
	cmd->params.rx_filter_options = FUNC1(CFG_RX_PRSP_EN |
						    CFG_RX_MGMT_EN |
						    CFG_RX_BCN_EN);
	cmd->params.scan_options = 0;
	cmd->params.num_channels = n_channels;
	cmd->params.num_probe_requests = n_probes;
	cmd->params.tx_rate = FUNC0(1 << 1); /* 2 Mbps */
	cmd->params.tid_trigger = 0;

	for (i = 0; i < n_channels; i++) {
		cmd->channels[i].min_duration =
			FUNC1(WL1251_SCAN_MIN_DURATION);
		cmd->channels[i].max_duration =
			FUNC1(WL1251_SCAN_MAX_DURATION);
		FUNC5(&cmd->channels[i].bssid_lsb, 0xff, 4);
		FUNC5(&cmd->channels[i].bssid_msb, 0xff, 2);
		cmd->channels[i].early_termination = 0;
		cmd->channels[i].tx_power_att = 0;
		cmd->channels[i].channel = channels[i]->hw_value;
	}

	cmd->params.ssid_len = ssid_len;
	if (ssid)
		FUNC4(cmd->params.ssid, ssid, ssid_len);

	ret = FUNC6(wl, CMD_SCAN, cmd, sizeof(*cmd));
	if (ret < 0) {
		FUNC8("cmd scan failed: %d", ret);
		goto out;
	}

	FUNC9(wl, wl->cmd_box_addr, cmd, sizeof(*cmd));

	if (cmd->header.status != CMD_STATUS_SUCCESS) {
		FUNC8("cmd scan status wasn't success: %d",
			     cmd->header.status);
		ret = -EIO;
		goto out;
	}

out:
	FUNC2(cmd);
	return ret;
}