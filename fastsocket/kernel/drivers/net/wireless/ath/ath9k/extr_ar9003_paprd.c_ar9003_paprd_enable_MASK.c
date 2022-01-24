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
struct TYPE_6__ {int tx_chainmask; } ;
struct TYPE_5__ {int /*<<< orphan*/  papdRateMaskHt20; } ;
struct ar9300_eeprom {TYPE_2__ modalHeader5G; } ;
struct TYPE_4__ {struct ar9300_eeprom ar9300_eep; } ;
struct ath_hw {int paprd_table_write_done; TYPE_3__ caps; TYPE_1__ eeprom; struct ath9k_channel* curchan; } ;
struct ath9k_channel {scalar_t__ channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_PAPRD_CTRL0_B0 ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_CTRL0_B1 ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_CTRL0_B2 ; 
 int /*<<< orphan*/  AR_PHY_PAPRD_CTRL0_PAPRD_ENABLE ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ath9k_channel*) ; 
 scalar_t__ MID_5G_SUB_BAND_START ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ UPPER_5G_SUB_BAND_START ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,struct ath9k_channel*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct ath_hw *ah, bool val)
{
	struct ath9k_channel *chan = ah->curchan;
	struct ar9300_eeprom *eep = &ah->eeprom.ar9300_eep;

	/*
	 * 3 bits for modalHeader5G.papdRateMaskHt20
	 * is used for sub-band disabling of PAPRD.
	 * 5G band is divided into 3 sub-bands -- upper,
	 * middle, lower.
	 * if bit 30 of modalHeader5G.papdRateMaskHt20 is set
	 * -- disable PAPRD for upper band 5GHz
	 * if bit 29 of modalHeader5G.papdRateMaskHt20 is set
	 * -- disable PAPRD for middle band 5GHz
	 * if bit 28 of modalHeader5G.papdRateMaskHt20 is set
	 * -- disable PAPRD for lower band 5GHz
	 */

	if (FUNC1(chan)) {
		if (chan->channel >= UPPER_5G_SUB_BAND_START) {
			if (FUNC4(eep->modalHeader5G.papdRateMaskHt20)
								  & FUNC0(30))
				val = false;
		} else if (chan->channel >= MID_5G_SUB_BAND_START) {
			if (FUNC4(eep->modalHeader5G.papdRateMaskHt20)
								  & FUNC0(29))
				val = false;
		} else {
			if (FUNC4(eep->modalHeader5G.papdRateMaskHt20)
								  & FUNC0(28))
				val = false;
		}
	}

	if (val) {
		ah->paprd_table_write_done = true;
		FUNC3(ah, chan, false);
	}

	FUNC2(ah, AR_PHY_PAPRD_CTRL0_B0,
		      AR_PHY_PAPRD_CTRL0_PAPRD_ENABLE, !!val);
	if (ah->caps.tx_chainmask & FUNC0(1))
		FUNC2(ah, AR_PHY_PAPRD_CTRL0_B1,
			      AR_PHY_PAPRD_CTRL0_PAPRD_ENABLE, !!val);
	if (ah->caps.tx_chainmask & FUNC0(2))
		FUNC2(ah, AR_PHY_PAPRD_CTRL0_B2,
			      AR_PHY_PAPRD_CTRL0_PAPRD_ENABLE, !!val);
}