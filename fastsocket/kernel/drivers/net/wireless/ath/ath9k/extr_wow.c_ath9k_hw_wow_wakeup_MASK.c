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
struct ath_hw {int wow_event_mask; scalar_t__ is_pciexpress; } ;

/* Variables and functions */
 int AH_WOW_BEACON_MISS ; 
 int AH_WOW_LINK_CHANGE ; 
 int AH_WOW_MAGIC_PATTERN_EN ; 
 int AH_WOW_USER_PATTERN_EN ; 
 int /*<<< orphan*/  AR_PCIE_PM_CTRL ; 
 int /*<<< orphan*/  AR_PMCTRL_PWR_STATE_D1D3 ; 
 int /*<<< orphan*/  AR_PMCTRL_WOW_PME_CLR ; 
 int /*<<< orphan*/  AR_RSSI_THR ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  AR_WA ; 
 int AR_WA_POR_SHORT ; 
 int AR_WA_RESET_EN ; 
 int AR_WA_UNTIE_RESET_EN ; 
 int AR_WOW_BEACON_FAIL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int AR_WOW_KEEP_ALIVE_FAIL ; 
 int AR_WOW_MAGIC_PAT_FOUND ; 
 int /*<<< orphan*/  AR_WOW_PATTERN ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  INIT_RSSI_THR ; 
 int FUNC5 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*,int) ; 

u32 FUNC10(struct ath_hw *ah)
{
	u32 wow_status = 0;
	u32 val = 0, rval;
	/*
	 * read the WoW status register to know
	 * the wakeup reason
	 */
	rval = FUNC5(ah, AR_WOW_PATTERN);
	val = FUNC4(rval);

	/*
	 * mask only the WoW events that we have enabled. Sometimes
	 * we have spurious WoW events from the AR_WOW_PATTERN
	 * register. This mask will clean it up.
	 */

	val &= ah->wow_event_mask;

	if (val) {

		if (val & AR_WOW_MAGIC_PAT_FOUND)
			wow_status |= AH_WOW_MAGIC_PATTERN_EN;

		if (FUNC3(val))
			wow_status |= AH_WOW_USER_PATTERN_EN;

		if (val & AR_WOW_KEEP_ALIVE_FAIL)
			wow_status |= AH_WOW_LINK_CHANGE;

		if (val & AR_WOW_BEACON_FAIL)
			wow_status |= AH_WOW_BEACON_MISS;

	}

	/*
	 * set and clear WOW_PME_CLEAR registers for the chip to
	 * generate next wow signal.
	 * disable D3 before accessing other registers ?
	 */

	/* do we need to check the bit value 0x01000000 (7-10) ?? */
	FUNC6(ah, AR_PCIE_PM_CTRL, AR_PMCTRL_WOW_PME_CLR,
		AR_PMCTRL_PWR_STATE_D1D3);

	/*
	 * clear all events
	 */
	FUNC8(ah, AR_WOW_PATTERN,
		  FUNC2(FUNC5(ah, AR_WOW_PATTERN)));

	/*
	 * tie reset register for AR9002 family of chipsets
	 * NB: not tieing it back might have some repurcussions.
	 */

	if (!FUNC1(ah)) {
		FUNC7(ah, AR_WA, AR_WA_UNTIE_RESET_EN |
			    AR_WA_POR_SHORT | AR_WA_RESET_EN);
	}


	/*
	 * restore the beacon threshold to init value
	 */
	FUNC8(ah, AR_RSSI_THR, INIT_RSSI_THR);

	/*
	 * Restore the way the PCI-E reset, Power-On-Reset, external
	 * PCIE_POR_SHORT pins are tied to its original value.
	 * Previously just before WoW sleep, we untie the PCI-E
	 * reset to our Chip's Power On Reset so that any PCI-E
	 * reset from the bus will not reset our chip
	 */

	if (FUNC0(ah) && ah->is_pciexpress)
		FUNC9(ah, false);

	ah->wow_event_mask = 0;

	return wow_status;
}