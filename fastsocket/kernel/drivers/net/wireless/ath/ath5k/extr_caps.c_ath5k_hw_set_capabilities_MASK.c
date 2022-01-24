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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_6__ {int /*<<< orphan*/  q_tx_num; } ;
struct TYPE_5__ {int range_5ghz_min; int range_5ghz_max; int range_2ghz_min; int range_2ghz_max; } ;
struct TYPE_4__ {int /*<<< orphan*/  ee_regdomain; int /*<<< orphan*/  ee_header; } ;
struct ath5k_capabilities {int cap_has_phyerr_counters; int cap_has_mrr_support; TYPE_3__ cap_queues; int /*<<< orphan*/  cap_mode; int /*<<< orphan*/  cap_needs_2GHz_ovr; TYPE_2__ cap_range; TYPE_1__ cap_eeprom; } ;
struct ath5k_hw {scalar_t__ ah_version; int ah_radio_5ghz_revision; scalar_t__ ah_mac_srev; struct ath5k_capabilities ah_capabilities; } ;

/* Variables and functions */
 scalar_t__ AR5K_AR5210 ; 
 scalar_t__ AR5K_AR5211 ; 
 scalar_t__ AR5K_AR5212 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AR5K_MODE_11A ; 
 int /*<<< orphan*/  AR5K_MODE_11B ; 
 int /*<<< orphan*/  AR5K_MODE_11G ; 
 int /*<<< orphan*/  AR5K_NUM_TX_QUEUES ; 
 int /*<<< orphan*/  AR5K_NUM_TX_QUEUES_NOQCU ; 
 scalar_t__ AR5K_SREV_AR5213A ; 
 int AR5K_SREV_RAD_2112 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct ath5k_hw *ah)
{
	struct ath5k_capabilities *caps = &ah->ah_capabilities;
	u16 ee_header;

	/* Capabilities stored in the EEPROM */
	ee_header = caps->cap_eeprom.ee_header;

	if (ah->ah_version == AR5K_AR5210) {
		/*
		 * Set radio capabilities
		 * (The AR5110 only supports the middle 5GHz band)
		 */
		caps->cap_range.range_5ghz_min = 5120;
		caps->cap_range.range_5ghz_max = 5430;
		caps->cap_range.range_2ghz_min = 0;
		caps->cap_range.range_2ghz_max = 0;

		/* Set supported modes */
		FUNC4(AR5K_MODE_11A, caps->cap_mode);
	} else {
		/*
		 * XXX The transceiver supports frequencies from 4920 to 6100MHz
		 * XXX and from 2312 to 2732MHz. There are problems with the
		 * XXX current ieee80211 implementation because the IEEE
		 * XXX channel mapping does not support negative channel
		 * XXX numbers (2312MHz is channel -19). Of course, this
		 * XXX doesn't matter because these channels are out of the
		 * XXX legal range.
		 */

		/*
		 * Set radio capabilities
		 */

		if (FUNC0(ee_header)) {
			if (FUNC5(caps->cap_eeprom.ee_regdomain))
				caps->cap_range.range_5ghz_min = 4920;
			else
				caps->cap_range.range_5ghz_min = 5005;
			caps->cap_range.range_5ghz_max = 6100;

			/* Set supported modes */
			FUNC4(AR5K_MODE_11A, caps->cap_mode);
		}

		/* Enable  802.11b if a 2GHz capable radio (2111/5112) is
		 * connected */
		if (FUNC1(ee_header) ||
		    (FUNC2(ee_header) &&
		     ah->ah_version != AR5K_AR5211)) {
			/* 2312 */
			caps->cap_range.range_2ghz_min = 2412;
			caps->cap_range.range_2ghz_max = 2732;

			/* Override 2GHz modes on SoCs that need it
			 * NOTE: cap_needs_2GHz_ovr gets set from
			 * ath_ahb_probe */
			if (!caps->cap_needs_2GHz_ovr) {
				if (FUNC1(ee_header))
					FUNC4(AR5K_MODE_11B,
							caps->cap_mode);

				if (FUNC2(ee_header) &&
				ah->ah_version != AR5K_AR5211)
					FUNC4(AR5K_MODE_11G,
							caps->cap_mode);
			}
		}
	}

	if ((ah->ah_radio_5ghz_revision & 0xf0) == AR5K_SREV_RAD_2112)
		FUNC3(AR5K_MODE_11A, caps->cap_mode);

	/* Set number of supported TX queues */
	if (ah->ah_version == AR5K_AR5210)
		caps->cap_queues.q_tx_num = AR5K_NUM_TX_QUEUES_NOQCU;
	else
		caps->cap_queues.q_tx_num = AR5K_NUM_TX_QUEUES;

	/* Newer hardware has PHY error counters */
	if (ah->ah_mac_srev >= AR5K_SREV_AR5213A)
		caps->cap_has_phyerr_counters = true;
	else
		caps->cap_has_phyerr_counters = false;

	/* MACs since AR5212 have MRR support */
	if (ah->ah_version == AR5K_AR5212)
		caps->cap_has_mrr_support = true;
	else
		caps->cap_has_mrr_support = false;

	return 0;
}