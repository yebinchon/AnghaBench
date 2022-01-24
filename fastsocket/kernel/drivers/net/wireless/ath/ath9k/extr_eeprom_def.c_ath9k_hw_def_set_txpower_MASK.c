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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct modal_eep_header {scalar_t__ ht40PowerIncForPdadc; scalar_t__ pwrDecreaseFor3Chain; scalar_t__ pwrDecreaseFor2Chain; } ;
struct ath_regulatory {scalar_t__ max_power_level; } ;
struct TYPE_5__ {int version; } ;
struct ar5416_eeprom_def {TYPE_2__ baseEepHeader; struct modal_eep_header* modalHeader; } ;
struct TYPE_4__ {struct ar5416_eeprom_def def; } ;
struct ath_hw {TYPE_3__* eep_ops; TYPE_1__ eeprom; } ;
struct ath9k_channel {int dummy; } ;
typedef  int /*<<< orphan*/  ratesArray ;
typedef  int int8_t ;
typedef  scalar_t__ int16_t ;
struct TYPE_6__ {int (* get_eeprom ) (struct ath_hw*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int AR5416_EEP_MINOR_VER_2 ; 
 int AR5416_EEP_VER_MINOR_MASK ; 
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
 int /*<<< orphan*/  AR_PHY_POWER_TX_SUB ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 int FUNC2 (scalar_t__,int) ; 
 int Ar5416RateSize ; 
 int /*<<< orphan*/  EEP_PWR_TABLE_OFFSET ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int FUNC4 (struct ath9k_channel*) ; 
 scalar_t__ FUNC5 (struct ath9k_channel*) ; 
 scalar_t__ MAX_RATE_POWER ; 
 scalar_t__ OLC_FOR_AR9280_20_LATER ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (size_t) ; 
 struct ath_regulatory* FUNC9 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hw*,struct ath9k_channel*,scalar_t__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
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
 int FUNC14 (struct ath_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct ath_hw *ah,
				    struct ath9k_channel *chan,
				    u16 cfgCtl,
				    u8 twiceAntennaReduction,
				    u8 powerLimit, bool test)
{
#define RT_AR_DELTA(x) (ratesArray[x] - cck_ofdm_delta)
	struct ath_regulatory *regulatory = FUNC9(ah);
	struct ar5416_eeprom_def *pEepData = &ah->eeprom.def;
	struct modal_eep_header *pModal =
		&(pEepData->modalHeader[FUNC4(chan)]);
	int16_t ratesArray[Ar5416RateSize];
	u8 ht40PowerIncForPdadc = 2;
	int i, cck_ofdm_delta = 0;

	FUNC13(ratesArray, 0, sizeof(ratesArray));

	if ((pEepData->baseEepHeader.version & AR5416_EEP_VER_MINOR_MASK) >=
	    AR5416_EEP_MINOR_VER_2) {
		ht40PowerIncForPdadc = pModal->ht40PowerIncForPdadc;
	}

	FUNC11(ah, chan,
					       &ratesArray[0], cfgCtl,
					       twiceAntennaReduction,
					       powerLimit);

	FUNC10(ah, chan);

	regulatory->max_power_level = 0;
	for (i = 0; i < FUNC0(ratesArray); i++) {
		if (ratesArray[i] > MAX_RATE_POWER)
			ratesArray[i] = MAX_RATE_POWER;
		if (ratesArray[i] > regulatory->max_power_level)
			regulatory->max_power_level = ratesArray[i];
	}

	FUNC12(ah);

	if (test)
		return;

	if (FUNC1(ah)) {
		for (i = 0; i < Ar5416RateSize; i++) {
			int8_t pwr_table_offset;

			pwr_table_offset = ah->eep_ops->get_eeprom(ah,
							EEP_PWR_TABLE_OFFSET);
			ratesArray[i] -= pwr_table_offset * 2;
		}
	}

	FUNC3(ah);

	FUNC7(ah, AR_PHY_POWER_TX_RATE1,
		  FUNC2(ratesArray[rate18mb], 24)
		  | FUNC2(ratesArray[rate12mb], 16)
		  | FUNC2(ratesArray[rate9mb], 8)
		  | FUNC2(ratesArray[rate6mb], 0));
	FUNC7(ah, AR_PHY_POWER_TX_RATE2,
		  FUNC2(ratesArray[rate54mb], 24)
		  | FUNC2(ratesArray[rate48mb], 16)
		  | FUNC2(ratesArray[rate36mb], 8)
		  | FUNC2(ratesArray[rate24mb], 0));

	if (FUNC4(chan)) {
		if (OLC_FOR_AR9280_20_LATER) {
			cck_ofdm_delta = 2;
			FUNC7(ah, AR_PHY_POWER_TX_RATE3,
				FUNC2(RT_AR_DELTA(rate2s), 24)
				| FUNC2(RT_AR_DELTA(rate2l), 16)
				| FUNC2(ratesArray[rateXr], 8)
				| FUNC2(RT_AR_DELTA(rate1l), 0));
			FUNC7(ah, AR_PHY_POWER_TX_RATE4,
				FUNC2(RT_AR_DELTA(rate11s), 24)
				| FUNC2(RT_AR_DELTA(rate11l), 16)
				| FUNC2(RT_AR_DELTA(rate5_5s), 8)
				| FUNC2(RT_AR_DELTA(rate5_5l), 0));
		} else {
			FUNC7(ah, AR_PHY_POWER_TX_RATE3,
				FUNC2(ratesArray[rate2s], 24)
				| FUNC2(ratesArray[rate2l], 16)
				| FUNC2(ratesArray[rateXr], 8)
				| FUNC2(ratesArray[rate1l], 0));
			FUNC7(ah, AR_PHY_POWER_TX_RATE4,
				FUNC2(ratesArray[rate11s], 24)
				| FUNC2(ratesArray[rate11l], 16)
				| FUNC2(ratesArray[rate5_5s], 8)
				| FUNC2(ratesArray[rate5_5l], 0));
		}
	}

	FUNC7(ah, AR_PHY_POWER_TX_RATE5,
		  FUNC2(ratesArray[rateHt20_3], 24)
		  | FUNC2(ratesArray[rateHt20_2], 16)
		  | FUNC2(ratesArray[rateHt20_1], 8)
		  | FUNC2(ratesArray[rateHt20_0], 0));
	FUNC7(ah, AR_PHY_POWER_TX_RATE6,
		  FUNC2(ratesArray[rateHt20_7], 24)
		  | FUNC2(ratesArray[rateHt20_6], 16)
		  | FUNC2(ratesArray[rateHt20_5], 8)
		  | FUNC2(ratesArray[rateHt20_4], 0));

	if (FUNC5(chan)) {
		FUNC7(ah, AR_PHY_POWER_TX_RATE7,
			  FUNC2(ratesArray[rateHt40_3] +
				       ht40PowerIncForPdadc, 24)
			  | FUNC2(ratesArray[rateHt40_2] +
					 ht40PowerIncForPdadc, 16)
			  | FUNC2(ratesArray[rateHt40_1] +
					 ht40PowerIncForPdadc, 8)
			  | FUNC2(ratesArray[rateHt40_0] +
					 ht40PowerIncForPdadc, 0));
		FUNC7(ah, AR_PHY_POWER_TX_RATE8,
			  FUNC2(ratesArray[rateHt40_7] +
				       ht40PowerIncForPdadc, 24)
			  | FUNC2(ratesArray[rateHt40_6] +
					 ht40PowerIncForPdadc, 16)
			  | FUNC2(ratesArray[rateHt40_5] +
					 ht40PowerIncForPdadc, 8)
			  | FUNC2(ratesArray[rateHt40_4] +
					 ht40PowerIncForPdadc, 0));
		if (OLC_FOR_AR9280_20_LATER) {
			FUNC7(ah, AR_PHY_POWER_TX_RATE9,
				FUNC2(ratesArray[rateExtOfdm], 24)
				| FUNC2(RT_AR_DELTA(rateExtCck), 16)
				| FUNC2(ratesArray[rateDupOfdm], 8)
				| FUNC2(RT_AR_DELTA(rateDupCck), 0));
		} else {
			FUNC7(ah, AR_PHY_POWER_TX_RATE9,
				FUNC2(ratesArray[rateExtOfdm], 24)
				| FUNC2(ratesArray[rateExtCck], 16)
				| FUNC2(ratesArray[rateDupOfdm], 8)
				| FUNC2(ratesArray[rateDupCck], 0));
		}
	}

	FUNC7(ah, AR_PHY_POWER_TX_SUB,
		  FUNC2(pModal->pwrDecreaseFor3Chain, 6)
		  | FUNC2(pModal->pwrDecreaseFor2Chain, 0));

	FUNC6(ah);
}