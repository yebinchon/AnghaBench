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
typedef  int u32 ;
struct ath5k_hw {scalar_t__ ah_version; scalar_t__ ah_mac_srev; scalar_t__ ah_coverage_class; scalar_t__ ah_ack_bitrate_high; scalar_t__ nvifs; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 scalar_t__ AR5K_AR5212 ; 
 int /*<<< orphan*/  AR5K_MIC_QOS_CTL ; 
 int /*<<< orphan*/  AR5K_MIC_QOS_SEL ; 
 int /*<<< orphan*/  AR5K_QOS_NOACK ; 
 int /*<<< orphan*/  AR5K_QOS_NOACK_2BIT_VALUES ; 
 int /*<<< orphan*/  AR5K_QOS_NOACK_BIT_OFFSET ; 
 int /*<<< orphan*/  AR5K_QOS_NOACK_BYTE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AR5K_RSSI_THR ; 
 int AR5K_RSSI_THR_BMISS_S ; 
 scalar_t__ AR5K_SREV_AR2413 ; 
 int /*<<< orphan*/  AR5K_STA_ID1 ; 
 int AR5K_STA_ID1_ACKCTS_6MB ; 
 int AR5K_STA_ID1_BASE_RATE_11B ; 
 int AR5K_TUNE_BMISS_THRES ; 
 int AR5K_TUNE_RSSI_THRES ; 
 int /*<<< orphan*/  FUNC3 (struct ath5k_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath5k_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ath5k_hw*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath5k_hw*) ; 

void
FUNC8(struct ath5k_hw *ah, enum nl80211_iftype op_mode)
{
	/* Set bssid and bssid mask */
	FUNC4(ah);

	/* Set PCU config */
	FUNC6(ah, op_mode);

	/* Write rate duration table only on AR5212 and if
	 * virtual interface has already been brought up
	 * XXX: rethink this after new mode changes to
	 * mac80211 are integrated */
	if (ah->ah_version == AR5K_AR5212 &&
		ah->nvifs)
		FUNC7(ah);

	/* Set RSSI/BRSSI thresholds
	 *
	 * Note: If we decide to set this value
	 * dynamically, have in mind that when AR5K_RSSI_THR
	 * register is read it might return 0x40 if we haven't
	 * wrote anything to it plus BMISS RSSI threshold is zeroed.
	 * So doing a save/restore procedure here isn't the right
	 * choice. Instead store it on ath5k_hw */
	FUNC3(ah, (AR5K_TUNE_RSSI_THRES |
				AR5K_TUNE_BMISS_THRES <<
				AR5K_RSSI_THR_BMISS_S),
				AR5K_RSSI_THR);

	/* MIC QoS support */
	if (ah->ah_mac_srev >= AR5K_SREV_AR2413) {
		FUNC3(ah, 0x000100aa, AR5K_MIC_QOS_CTL);
		FUNC3(ah, 0x00003210, AR5K_MIC_QOS_SEL);
	}

	/* QoS NOACK Policy */
	if (ah->ah_version == AR5K_AR5212) {
		FUNC3(ah,
			FUNC2(2, AR5K_QOS_NOACK_2BIT_VALUES) |
			FUNC2(5, AR5K_QOS_NOACK_BIT_OFFSET)  |
			FUNC2(0, AR5K_QOS_NOACK_BYTE_OFFSET),
			AR5K_QOS_NOACK);
	}

	/* Restore slot time and ACK timeouts */
	if (ah->ah_coverage_class > 0)
		FUNC5(ah, ah->ah_coverage_class);

	/* Set ACK bitrate mode (see ack_rates_high) */
	if (ah->ah_version == AR5K_AR5212) {
		u32 val = AR5K_STA_ID1_BASE_RATE_11B | AR5K_STA_ID1_ACKCTS_6MB;
		if (ah->ah_ack_bitrate_high)
			FUNC0(ah, AR5K_STA_ID1, val);
		else
			FUNC1(ah, AR5K_STA_ID1, val);
	}
	return;
}