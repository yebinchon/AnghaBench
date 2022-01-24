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
struct ath5k_hw {int opmode; scalar_t__ ah_version; } ;

/* Variables and functions */
 scalar_t__ AR5K_AR5210 ; 
 int /*<<< orphan*/  AR5K_BEACON ; 
 int AR5K_BEACON_ENABLE ; 
 int AR5K_BEACON_PERIOD ; 
 int AR5K_BEACON_RESET_TSF ; 
 int /*<<< orphan*/  AR5K_ISR ; 
 int AR5K_ISR_BMISS ; 
 int /*<<< orphan*/  AR5K_PISR ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AR5K_STA_ID1 ; 
 int /*<<< orphan*/  AR5K_STA_ID1_PCF ; 
 int /*<<< orphan*/  AR5K_STA_ID1_PWR_SV ; 
 int /*<<< orphan*/  AR5K_TIMER0 ; 
 int /*<<< orphan*/  AR5K_TIMER1 ; 
 int /*<<< orphan*/  AR5K_TIMER2 ; 
 int /*<<< orphan*/  AR5K_TIMER3 ; 
 int AR5K_TUNE_DMA_BEACON_RESP ; 
 int AR5K_TUNE_SW_BEACON_RESP ; 
 int /*<<< orphan*/  AR5K_TXCFG ; 
 int /*<<< orphan*/  AR5K_TXCFG_ADHOC_BCN_ATIM ; 
#define  NL80211_IFTYPE_ADHOC 130 
 int NL80211_IFTYPE_AP ; 
 int NL80211_IFTYPE_MESH_POINT ; 
#define  NL80211_IFTYPE_MONITOR 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath5k_hw*) ; 

void
FUNC4(struct ath5k_hw *ah, u32 next_beacon, u32 interval)
{
	u32 timer1, timer2, timer3;

	/*
	 * Set the additional timers by mode
	 */
	switch (ah->opmode) {
	case NL80211_IFTYPE_MONITOR:
	case NL80211_IFTYPE_STATION:
		/* In STA mode timer1 is used as next wakeup
		 * timer and timer2 as next CFP duration start
		 * timer. Both in 1/8TUs. */
		/* TODO: PCF handling */
		if (ah->ah_version == AR5K_AR5210) {
			timer1 = 0xffffffff;
			timer2 = 0xffffffff;
		} else {
			timer1 = 0x0000ffff;
			timer2 = 0x0007ffff;
		}
		/* Mark associated AP as PCF incapable for now */
		FUNC0(ah, AR5K_STA_ID1, AR5K_STA_ID1_PCF);
		break;
	case NL80211_IFTYPE_ADHOC:
		FUNC1(ah, AR5K_TXCFG, AR5K_TXCFG_ADHOC_BCN_ATIM);
	default:
		/* On non-STA modes timer1 is used as next DMA
		 * beacon alert (DBA) timer and timer2 as next
		 * software beacon alert. Both in 1/8TUs. */
		timer1 = (next_beacon - AR5K_TUNE_DMA_BEACON_RESP) << 3;
		timer2 = (next_beacon - AR5K_TUNE_SW_BEACON_RESP) << 3;
		break;
	}

	/* Timer3 marks the end of our ATIM window
	 * a zero length window is not allowed because
	 * we 'll get no beacons */
	timer3 = next_beacon + 1;

	/*
	 * Set the beacon register and enable all timers.
	 */
	/* When in AP or Mesh Point mode zero timer0 to start TSF */
	if (ah->opmode == NL80211_IFTYPE_AP ||
	    ah->opmode == NL80211_IFTYPE_MESH_POINT)
		FUNC2(ah, 0, AR5K_TIMER0);

	FUNC2(ah, next_beacon, AR5K_TIMER0);
	FUNC2(ah, timer1, AR5K_TIMER1);
	FUNC2(ah, timer2, AR5K_TIMER2);
	FUNC2(ah, timer3, AR5K_TIMER3);

	/* Force a TSF reset if requested and enable beacons */
	if (interval & AR5K_BEACON_RESET_TSF)
		FUNC3(ah);

	FUNC2(ah, interval & (AR5K_BEACON_PERIOD |
					AR5K_BEACON_ENABLE),
						AR5K_BEACON);

	/* Flush any pending BMISS interrupts on ISR by
	 * performing a clear-on-write operation on PISR
	 * register for the BMISS bit (writing a bit on
	 * ISR toggles a reset for that bit and leaves
	 * the remaining bits intact) */
	if (ah->ah_version == AR5K_AR5210)
		FUNC2(ah, AR5K_ISR_BMISS, AR5K_ISR);
	else
		FUNC2(ah, AR5K_ISR_BMISS, AR5K_PISR);

	/* TODO: Set enhanced sleep registers on AR5212
	 * based on vif->bss_conf params, until then
	 * disable power save reporting.*/
	FUNC0(ah, AR5K_STA_ID1, AR5K_STA_ID1_PWR_SV);

}