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

/* Variables and functions */
 int /*<<< orphan*/  C_ADD_STA ; 
 int /*<<< orphan*/  C_BT_CONFIG ; 
 int /*<<< orphan*/  C_CHANNEL_SWITCH ; 
 int /*<<< orphan*/  C_CT_KILL_CONFIG ; 
 int /*<<< orphan*/  C_LEDS ; 
 int /*<<< orphan*/  C_PHY_CALIBRATION ; 
 int /*<<< orphan*/  C_POWER_TBL ; 
 int /*<<< orphan*/  C_QOS_PARAM ; 
 int /*<<< orphan*/  C_RATE_SCALE ; 
 int /*<<< orphan*/  C_REM_STA ; 
 int /*<<< orphan*/  C_RXON ; 
 int /*<<< orphan*/  C_RXON_ASSOC ; 
 int /*<<< orphan*/  C_RXON_TIMING ; 
 int /*<<< orphan*/  C_SCAN ; 
 int /*<<< orphan*/  C_SCAN_ABORT ; 
 int /*<<< orphan*/  C_SENSITIVITY ; 
 int /*<<< orphan*/  C_SPECTRUM_MEASUREMENT ; 
 int /*<<< orphan*/  C_STATS ; 
 int /*<<< orphan*/  C_TX ; 
 int /*<<< orphan*/  C_TX_BEACON ; 
 int /*<<< orphan*/  C_TX_LINK_QUALITY_CMD ; 
 int /*<<< orphan*/  C_TX_PWR_TBL ; 
 int /*<<< orphan*/  C_WEPKEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  N_3945_RX ; 
 int /*<<< orphan*/  N_ALIVE ; 
 int /*<<< orphan*/  N_BEACON ; 
 int /*<<< orphan*/  N_CARD_STATE ; 
 int /*<<< orphan*/  N_CHANNEL_SWITCH ; 
 int /*<<< orphan*/  N_COMPRESSED_BA ; 
 int /*<<< orphan*/  N_ERROR ; 
 int /*<<< orphan*/  N_MISSED_BEACONS ; 
 int /*<<< orphan*/  N_PM_DEBUG_STATS ; 
 int /*<<< orphan*/  N_PM_SLEEP ; 
 int /*<<< orphan*/  N_RX ; 
 int /*<<< orphan*/  N_RX_MPDU ; 
 int /*<<< orphan*/  N_RX_PHY ; 
 int /*<<< orphan*/  N_SCAN_COMPLETE ; 
 int /*<<< orphan*/  N_SCAN_RESULTS ; 
 int /*<<< orphan*/  N_SCAN_START ; 
 int /*<<< orphan*/  N_SPECTRUM_MEASUREMENT ; 
 int /*<<< orphan*/  N_STATS ; 

const char *
FUNC1(u8 cmd)
{
	switch (cmd) {
		FUNC0(N_ALIVE);
		FUNC0(N_ERROR);
		FUNC0(C_RXON);
		FUNC0(C_RXON_ASSOC);
		FUNC0(C_QOS_PARAM);
		FUNC0(C_RXON_TIMING);
		FUNC0(C_ADD_STA);
		FUNC0(C_REM_STA);
		FUNC0(C_WEPKEY);
		FUNC0(N_3945_RX);
		FUNC0(C_TX);
		FUNC0(C_RATE_SCALE);
		FUNC0(C_LEDS);
		FUNC0(C_TX_LINK_QUALITY_CMD);
		FUNC0(C_CHANNEL_SWITCH);
		FUNC0(N_CHANNEL_SWITCH);
		FUNC0(C_SPECTRUM_MEASUREMENT);
		FUNC0(N_SPECTRUM_MEASUREMENT);
		FUNC0(C_POWER_TBL);
		FUNC0(N_PM_SLEEP);
		FUNC0(N_PM_DEBUG_STATS);
		FUNC0(C_SCAN);
		FUNC0(C_SCAN_ABORT);
		FUNC0(N_SCAN_START);
		FUNC0(N_SCAN_RESULTS);
		FUNC0(N_SCAN_COMPLETE);
		FUNC0(N_BEACON);
		FUNC0(C_TX_BEACON);
		FUNC0(C_TX_PWR_TBL);
		FUNC0(C_BT_CONFIG);
		FUNC0(C_STATS);
		FUNC0(N_STATS);
		FUNC0(N_CARD_STATE);
		FUNC0(N_MISSED_BEACONS);
		FUNC0(C_CT_KILL_CONFIG);
		FUNC0(C_SENSITIVITY);
		FUNC0(C_PHY_CALIBRATION);
		FUNC0(N_RX_PHY);
		FUNC0(N_RX_MPDU);
		FUNC0(N_RX);
		FUNC0(N_COMPRESSED_BA);
	default:
		return "UNKNOWN";

	}
}