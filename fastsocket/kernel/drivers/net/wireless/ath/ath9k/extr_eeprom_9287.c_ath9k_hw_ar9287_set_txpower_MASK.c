#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct modal_eep_ar9287_header {scalar_t__ ht40PowerIncForPdadc; } ;
struct ath_regulatory {scalar_t__ max_power_level; } ;
struct TYPE_4__ {int version; } ;
struct ar9287_eeprom {TYPE_2__ baseEepHeader; struct modal_eep_ar9287_header modalHeader; } ;
struct TYPE_3__ {struct ar9287_eeprom map9287; } ;
struct ath_hw {TYPE_1__ eeprom; } ;
struct ath9k_channel {int dummy; } ;
typedef  int /*<<< orphan*/  ratesArray ;
typedef  scalar_t__ int16_t ;

/* Variables and functions */
 int AR9287_EEP_MINOR_VER_2 ; 
 int AR9287_EEP_VER_MINOR_MASK ; 
 int AR9287_PWR_TABLE_OFFSET_DB ; 
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  AR_PHY_POWER_TX_RATE1 ; 
 int /*<<< orphan*/  AR_PHY_POWER_TX_RATE2 ; 
 int /*<<< orphan*/  AR_PHY_POWER_TX_RATE3 ; 
 int /*<<< orphan*/  AR_PHY_POWER_TX_RATE4 ; 
 int /*<<< orphan*/  AR_PHY_POWER_TX_RATE5 ; 
 int /*<<< orphan*/  AR_PHY_POWER_TX_RATE6 ; 
 int /*<<< orphan*/  AR_PHY_POWER_TX_RATE7 ; 
 int /*<<< orphan*/  AR_PHY_POWER_TX_RATE8 ; 
 int /*<<< orphan*/  AR_PHY_POWER_TX_RATE9 ; 
 int FUNC1 (scalar_t__,int) ; 
 int Ar5416RateSize ; 
 int /*<<< orphan*/  EEP_OL_PWRCTRL ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath9k_channel*) ; 
 scalar_t__ FUNC4 (struct ath9k_channel*) ; 
 scalar_t__ MAX_RATE_POWER ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 struct ath_regulatory* FUNC8 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*,struct ath9k_channel*,scalar_t__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 size_t rate11l ; 
 size_t rate11s ; 
 size_t rate12mb ; 
 size_t rate18mb ; 
 size_t rate1l ; 
 size_t rate24mb ; 
 size_t rate2l ; 
 size_t rate2s ; 
 size_t rate36mb ; 
 size_t rate48mb ; 
 size_t rate54mb ; 
 size_t rate5_5l ; 
 size_t rate5_5s ; 
 size_t rate6mb ; 
 size_t rate9mb ; 
 size_t rateDupCck ; 
 size_t rateDupOfdm ; 
 size_t rateExtCck ; 
 size_t rateExtOfdm ; 
 size_t rateHt20_0 ; 
 size_t rateHt20_1 ; 
 size_t rateHt20_2 ; 
 size_t rateHt20_3 ; 
 size_t rateHt20_4 ; 
 size_t rateHt20_5 ; 
 size_t rateHt20_6 ; 
 size_t rateHt20_7 ; 
 size_t rateHt40_0 ; 
 size_t rateHt40_1 ; 
 size_t rateHt40_2 ; 
 size_t rateHt40_3 ; 
 size_t rateHt40_4 ; 
 size_t rateHt40_5 ; 
 size_t rateHt40_6 ; 
 size_t rateHt40_7 ; 
 size_t rateXr ; 

__attribute__((used)) static void FUNC13(struct ath_hw *ah,
					struct ath9k_channel *chan, u16 cfgCtl,
					u8 twiceAntennaReduction,
					u8 powerLimit, bool test)
{
	struct ath_regulatory *regulatory = FUNC8(ah);
	struct ar9287_eeprom *pEepData = &ah->eeprom.map9287;
	struct modal_eep_ar9287_header *pModal = &pEepData->modalHeader;
	int16_t ratesArray[Ar5416RateSize];
	u8 ht40PowerIncForPdadc = 2;
	int i;

	FUNC12(ratesArray, 0, sizeof(ratesArray));

	if ((pEepData->baseEepHeader.version & AR9287_EEP_VER_MINOR_MASK) >=
	    AR9287_EEP_MINOR_VER_2)
		ht40PowerIncForPdadc = pModal->ht40PowerIncForPdadc;

	FUNC10(ah, chan,
						 &ratesArray[0], cfgCtl,
						 twiceAntennaReduction,
						 powerLimit);

	FUNC9(ah, chan);

	regulatory->max_power_level = 0;
	for (i = 0; i < FUNC0(ratesArray); i++) {
		if (ratesArray[i] > MAX_RATE_POWER)
			ratesArray[i] = MAX_RATE_POWER;

		if (ratesArray[i] > regulatory->max_power_level)
			regulatory->max_power_level = ratesArray[i];
	}

	FUNC11(ah);

	if (test)
		return;

	for (i = 0; i < Ar5416RateSize; i++)
		ratesArray[i] -= AR9287_PWR_TABLE_OFFSET_DB * 2;

	FUNC2(ah);

	/* OFDM power per rate */
	FUNC6(ah, AR_PHY_POWER_TX_RATE1,
		  FUNC1(ratesArray[rate18mb], 24)
		  | FUNC1(ratesArray[rate12mb], 16)
		  | FUNC1(ratesArray[rate9mb], 8)
		  | FUNC1(ratesArray[rate6mb], 0));

	FUNC6(ah, AR_PHY_POWER_TX_RATE2,
		  FUNC1(ratesArray[rate54mb], 24)
		  | FUNC1(ratesArray[rate48mb], 16)
		  | FUNC1(ratesArray[rate36mb], 8)
		  | FUNC1(ratesArray[rate24mb], 0));

	/* CCK power per rate */
	if (FUNC3(chan))	{
		FUNC6(ah, AR_PHY_POWER_TX_RATE3,
			  FUNC1(ratesArray[rate2s], 24)
			  | FUNC1(ratesArray[rate2l], 16)
			  | FUNC1(ratesArray[rateXr], 8)
			  | FUNC1(ratesArray[rate1l], 0));
		FUNC6(ah, AR_PHY_POWER_TX_RATE4,
			  FUNC1(ratesArray[rate11s], 24)
			  | FUNC1(ratesArray[rate11l], 16)
			  | FUNC1(ratesArray[rate5_5s], 8)
			  | FUNC1(ratesArray[rate5_5l], 0));
	}

	/* HT20 power per rate */
	FUNC6(ah, AR_PHY_POWER_TX_RATE5,
		  FUNC1(ratesArray[rateHt20_3], 24)
		  | FUNC1(ratesArray[rateHt20_2], 16)
		  | FUNC1(ratesArray[rateHt20_1], 8)
		  | FUNC1(ratesArray[rateHt20_0], 0));

	FUNC6(ah, AR_PHY_POWER_TX_RATE6,
		  FUNC1(ratesArray[rateHt20_7], 24)
		  | FUNC1(ratesArray[rateHt20_6], 16)
		  | FUNC1(ratesArray[rateHt20_5], 8)
		  | FUNC1(ratesArray[rateHt20_4], 0));

	/* HT40 power per rate */
	if (FUNC4(chan))	{
		if (FUNC7(ah, EEP_OL_PWRCTRL)) {
			FUNC6(ah, AR_PHY_POWER_TX_RATE7,
				  FUNC1(ratesArray[rateHt40_3], 24)
				  | FUNC1(ratesArray[rateHt40_2], 16)
				  | FUNC1(ratesArray[rateHt40_1], 8)
				  | FUNC1(ratesArray[rateHt40_0], 0));

			FUNC6(ah, AR_PHY_POWER_TX_RATE8,
				  FUNC1(ratesArray[rateHt40_7], 24)
				  | FUNC1(ratesArray[rateHt40_6], 16)
				  | FUNC1(ratesArray[rateHt40_5], 8)
				  | FUNC1(ratesArray[rateHt40_4], 0));
		} else {
			FUNC6(ah, AR_PHY_POWER_TX_RATE7,
				  FUNC1(ratesArray[rateHt40_3] +
					       ht40PowerIncForPdadc, 24)
				  | FUNC1(ratesArray[rateHt40_2] +
						 ht40PowerIncForPdadc, 16)
				  | FUNC1(ratesArray[rateHt40_1] +
						 ht40PowerIncForPdadc, 8)
				  | FUNC1(ratesArray[rateHt40_0] +
						 ht40PowerIncForPdadc, 0));

			FUNC6(ah, AR_PHY_POWER_TX_RATE8,
				  FUNC1(ratesArray[rateHt40_7] +
					       ht40PowerIncForPdadc, 24)
				  | FUNC1(ratesArray[rateHt40_6] +
						 ht40PowerIncForPdadc, 16)
				  | FUNC1(ratesArray[rateHt40_5] +
						 ht40PowerIncForPdadc, 8)
				  | FUNC1(ratesArray[rateHt40_4] +
						 ht40PowerIncForPdadc, 0));
		}

		/* Dup/Ext power per rate */
		FUNC6(ah, AR_PHY_POWER_TX_RATE9,
			  FUNC1(ratesArray[rateExtOfdm], 24)
			  | FUNC1(ratesArray[rateExtCck], 16)
			  | FUNC1(ratesArray[rateDupOfdm], 8)
			  | FUNC1(ratesArray[rateDupCck], 0));
	}
	FUNC5(ah);
}