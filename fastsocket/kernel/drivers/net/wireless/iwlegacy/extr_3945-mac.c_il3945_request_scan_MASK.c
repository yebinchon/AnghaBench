#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_11__ {int /*<<< orphan*/  bcast_id; } ;
struct il_priv {int scan_band; int /*<<< orphan*/  status; TYPE_6__* scan_request; TYPE_4__ hw_params; struct il3945_scan_cmd* scan_cmd; int /*<<< orphan*/  mutex; } ;
struct il_host_cmd {int len; struct il3945_scan_cmd* data; int /*<<< orphan*/  flags; int /*<<< orphan*/  id; } ;
struct TYPE_12__ {int /*<<< orphan*/  life_time; } ;
struct TYPE_14__ {void* len; int /*<<< orphan*/  rate; TYPE_5__ stop_time; int /*<<< orphan*/  sta_id; int /*<<< orphan*/  tx_flags; } ;
struct il3945_scan_cmd {int flags; int channel_count; void* len; TYPE_7__ tx_cmd; int /*<<< orphan*/ * data; int /*<<< orphan*/  good_CRC_th; TYPE_2__* direct_scan; void* suspend_time; void* max_out_time; int /*<<< orphan*/  quiet_time; int /*<<< orphan*/  quiet_plcp_th; } ;
struct il3945_scan_channel {int dummy; } ;
struct TYPE_8__ {int beacon_int; } ;
struct ieee80211_vif {int /*<<< orphan*/  addr; TYPE_1__ bss_conf; } ;
struct ieee80211_mgmt {int dummy; } ;
typedef  enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_13__ {int n_ssids; int /*<<< orphan*/  ie_len; int /*<<< orphan*/  ie; TYPE_3__* ssids; } ;
struct TYPE_10__ {scalar_t__ ssid_len; int /*<<< orphan*/  ssid; } ;
struct TYPE_9__ {int /*<<< orphan*/  ssid; scalar_t__ len; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SIZE_HUGE ; 
 int /*<<< orphan*/  C_SCAN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  IEEE80211_BAND_2GHZ 129 
#define  IEEE80211_BAND_5GHZ 128 
 int /*<<< orphan*/  IL_ACTIVE_QUIET_TIME ; 
 int /*<<< orphan*/  IL_GOOD_CRC_TH_DEFAULT ; 
 int /*<<< orphan*/  IL_GOOD_CRC_TH_NEVER ; 
 scalar_t__ IL_MAX_SCAN_SIZE ; 
 int /*<<< orphan*/  IL_PLCP_QUIET_THRESH ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  RATE_1M_PLCP ; 
 int /*<<< orphan*/  RATE_6M_PLCP ; 
 int RXON_FLG_AUTO_DETECT_MSK ; 
 int RXON_FLG_BAND_24G_MSK ; 
 int /*<<< orphan*/  S_SCAN_HW ; 
 int /*<<< orphan*/  TX_CMD_FLG_SEQ_CTL_MSK ; 
 int /*<<< orphan*/  TX_CMD_LIFE_TIME_INFINITE ; 
 int /*<<< orphan*/  WLAN_EID_SSID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int) ; 
 void* FUNC5 (int) ; 
 int FUNC6 (struct il_priv*) ; 
 int FUNC7 (struct il_priv*,int,int,scalar_t__,void*,struct ieee80211_vif*) ; 
 int FUNC8 (struct il_priv*,struct ieee80211_mgmt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (struct il_priv*) ; 
 int FUNC10 (struct il_priv*,struct il_host_cmd*) ; 
 struct il3945_scan_cmd* FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct il3945_scan_cmd*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC17(struct il_priv *il, struct ieee80211_vif *vif)
{
	struct il_host_cmd cmd = {
		.id = C_SCAN,
		.len = sizeof(struct il3945_scan_cmd),
		.flags = CMD_SIZE_HUGE,
	};
	struct il3945_scan_cmd *scan;
	u8 n_probes = 0;
	enum ieee80211_band band;
	bool is_active = false;
	int ret;
	u16 len;

	FUNC13(&il->mutex);

	if (!il->scan_cmd) {
		il->scan_cmd =
		    FUNC11(sizeof(struct il3945_scan_cmd) + IL_MAX_SCAN_SIZE,
			    GFP_KERNEL);
		if (!il->scan_cmd) {
			FUNC1("Fail to allocate scan memory\n");
			return -ENOMEM;
		}
	}
	scan = il->scan_cmd;
	FUNC15(scan, 0, sizeof(struct il3945_scan_cmd) + IL_MAX_SCAN_SIZE);

	scan->quiet_plcp_th = IL_PLCP_QUIET_THRESH;
	scan->quiet_time = IL_ACTIVE_QUIET_TIME;

	if (FUNC9(il)) {
		u16 interval;
		u32 extra;
		u32 suspend_time = 100;
		u32 scan_suspend_time = 100;

		FUNC0("Scanning while associated...\n");

		interval = vif->bss_conf.beacon_int;

		scan->suspend_time = 0;
		scan->max_out_time = FUNC5(200 * 1024);
		if (!interval)
			interval = suspend_time;
		/*
		 * suspend time format:
		 *  0-19: beacon interval in usec (time before exec.)
		 * 20-23: 0
		 * 24-31: number of beacons (suspend between channels)
		 */

		extra = (suspend_time / interval) << 24;
		scan_suspend_time =
		    0xFF0FFFFF & (extra | ((suspend_time % interval) * 1024));

		scan->suspend_time = FUNC5(scan_suspend_time);
		FUNC1("suspend_time 0x%X beacon interval %d\n",
		       scan_suspend_time, interval);
	}

	if (il->scan_request->n_ssids) {
		int i, p = 0;
		FUNC1("Kicking off active scan\n");
		for (i = 0; i < il->scan_request->n_ssids; i++) {
			/* always does wildcard anyway */
			if (!il->scan_request->ssids[i].ssid_len)
				continue;
			scan->direct_scan[p].id = WLAN_EID_SSID;
			scan->direct_scan[p].len =
			    il->scan_request->ssids[i].ssid_len;
			FUNC14(scan->direct_scan[p].ssid,
			       il->scan_request->ssids[i].ssid,
			       il->scan_request->ssids[i].ssid_len);
			n_probes++;
			p++;
		}
		is_active = true;
	} else
		FUNC1("Kicking off passive scan.\n");

	/* We don't build a direct scan probe request; the uCode will do
	 * that based on the direct_mask added to each channel entry */
	scan->tx_cmd.tx_flags = TX_CMD_FLG_SEQ_CTL_MSK;
	scan->tx_cmd.sta_id = il->hw_params.bcast_id;
	scan->tx_cmd.stop_time.life_time = TX_CMD_LIFE_TIME_INFINITE;

	/* flags + rate selection */

	switch (il->scan_band) {
	case IEEE80211_BAND_2GHZ:
		scan->flags = RXON_FLG_BAND_24G_MSK | RXON_FLG_AUTO_DETECT_MSK;
		scan->tx_cmd.rate = RATE_1M_PLCP;
		band = IEEE80211_BAND_2GHZ;
		break;
	case IEEE80211_BAND_5GHZ:
		scan->tx_cmd.rate = RATE_6M_PLCP;
		band = IEEE80211_BAND_5GHZ;
		break;
	default:
		FUNC2("Invalid scan band\n");
		return -EIO;
	}

	/*
	 * If active scaning is requested but a certain channel is marked
	 * passive, we can do active scanning if we detect transmissions. For
	 * passive only scanning disable switching to active on any channel.
	 */
	scan->good_CRC_th =
	    is_active ? IL_GOOD_CRC_TH_DEFAULT : IL_GOOD_CRC_TH_NEVER;

	len =
	    FUNC8(il, (struct ieee80211_mgmt *)scan->data,
			      vif->addr, il->scan_request->ie,
			      il->scan_request->ie_len,
			      IL_MAX_SCAN_SIZE - sizeof(*scan));
	scan->tx_cmd.len = FUNC4(len);

	/* select Rx antennas */
	scan->flags |= FUNC6(il);

	scan->channel_count =
	    FUNC7(il, band, is_active, n_probes,
					 (void *)&scan->data[len], vif);
	if (scan->channel_count == 0) {
		FUNC1("channel count %d\n", scan->channel_count);
		return -EIO;
	}

	cmd.len +=
	    FUNC12(scan->tx_cmd.len) +
	    scan->channel_count * sizeof(struct il3945_scan_channel);
	cmd.data = scan;
	scan->len = FUNC4(cmd.len);

	FUNC16(S_SCAN_HW, &il->status);
	ret = FUNC10(il, &cmd);
	if (ret)
		FUNC3(S_SCAN_HW, &il->status);
	return ret;
}