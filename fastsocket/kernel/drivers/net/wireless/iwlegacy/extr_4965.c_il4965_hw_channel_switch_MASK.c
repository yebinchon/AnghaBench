#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_12__ {int /*<<< orphan*/  channel; } ;
struct TYPE_10__ {int flags; int /*<<< orphan*/  filter_flags; } ;
struct TYPE_7__ {int /*<<< orphan*/  beacon_interval; } ;
struct il_priv {scalar_t__ band; int ucode_beacon_time; TYPE_6__ active; TYPE_4__ staging; struct ieee80211_vif* vif; TYPE_1__ timing; } ;
struct il_channel_info {int dummy; } ;
struct il4965_channel_switch_cmd {int band; int rxon_flags; int switch_time; int /*<<< orphan*/  tx_power; scalar_t__ expect_beacon; int /*<<< orphan*/  rxon_filter_flags; int /*<<< orphan*/  channel; } ;
struct TYPE_11__ {int beacon_int; } ;
struct ieee80211_vif {TYPE_5__ bss_conf; } ;
struct TYPE_9__ {TYPE_2__* chan; } ;
struct ieee80211_channel_switch {int count; int timestamp; TYPE_3__ chandef; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_8__ {int hw_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_CHANNEL_SWITCH ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EFAULT ; 
 int EIO ; 
 scalar_t__ IEEE80211_BAND_2GHZ ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK ; 
 int TIME_UNIT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (struct il_priv*,int,int,int,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct il_priv*,int,int,int) ; 
 struct il_channel_info* FUNC7 (struct il_priv*,scalar_t__,int) ; 
 scalar_t__ FUNC8 (struct il_channel_info const*) ; 
 int FUNC9 (struct il_priv*,int /*<<< orphan*/ ,int,struct il4965_channel_switch_cmd*) ; 
 int FUNC10 (struct il_priv*,int,int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(struct il_priv *il,
			 struct ieee80211_channel_switch *ch_switch)
{
	int rc;
	u8 band = 0;
	bool is_ht40 = false;
	u8 ctrl_chan_high = 0;
	struct il4965_channel_switch_cmd cmd;
	const struct il_channel_info *ch_info;
	u32 switch_time_in_usec, ucode_switch_time;
	u16 ch;
	u32 tsf_low;
	u8 switch_count;
	u16 beacon_interval = FUNC12(il->timing.beacon_interval);
	struct ieee80211_vif *vif = il->vif;
	band = (il->band == IEEE80211_BAND_2GHZ);

	if (FUNC2(vif == NULL))
		return -EIO;

	is_ht40 = FUNC11(il->staging.flags);

	if (is_ht40 && (il->staging.flags & RXON_FLG_CTRL_CHANNEL_LOC_HI_MSK))
		ctrl_chan_high = 1;

	cmd.band = band;
	cmd.expect_beacon = 0;
	ch = ch_switch->chandef.chan->hw_value;
	cmd.channel = FUNC3(ch);
	cmd.rxon_flags = il->staging.flags;
	cmd.rxon_filter_flags = il->staging.filter_flags;
	switch_count = ch_switch->count;
	tsf_low = ch_switch->timestamp & 0x0ffffffff;
	/*
	 * calculate the ucode channel switch time
	 * adding TSF as one of the factor for when to switch
	 */
	if (il->ucode_beacon_time > tsf_low && beacon_interval) {
		if (switch_count >
		    ((il->ucode_beacon_time - tsf_low) / beacon_interval)) {
			switch_count -=
			    (il->ucode_beacon_time - tsf_low) / beacon_interval;
		} else
			switch_count = 0;
	}
	if (switch_count <= 1)
		cmd.switch_time = FUNC4(il->ucode_beacon_time);
	else {
		switch_time_in_usec =
		    vif->bss_conf.beacon_int * switch_count * TIME_UNIT;
		ucode_switch_time =
		    FUNC10(il, switch_time_in_usec,
					beacon_interval);
		cmd.switch_time =
		    FUNC6(il, il->ucode_beacon_time,
				       ucode_switch_time, beacon_interval);
	}
	FUNC0("uCode time for the switch is 0x%x\n", cmd.switch_time);
	ch_info = FUNC7(il, il->band, ch);
	if (ch_info)
		cmd.expect_beacon = FUNC8(ch_info);
	else {
		FUNC1("invalid channel switch from %u to %u\n",
		       il->active.channel, ch);
		return -EFAULT;
	}

	rc = FUNC5(il, band, ch, is_ht40, ctrl_chan_high,
				     &cmd.tx_power);
	if (rc) {
		FUNC0("error:%d  fill txpower_tbl\n", rc);
		return rc;
	}

	return FUNC9(il, C_CHANNEL_SWITCH, sizeof(cmd), &cmd);
}