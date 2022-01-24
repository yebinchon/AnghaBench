#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  size_t u32 ;
struct ath_hw {size_t* totalAdcDcOffsetIOddPhase; size_t* totalAdcDcOffsetIEvenPhase; int* totalAdcDcOffsetQOddPhase; int* totalAdcDcOffsetQEvenPhase; TYPE_1__* cal_list_curr; } ;
struct ath_common {int dummy; } ;
struct ath9k_percal_data {int calCountMax; int calNumSamples; } ;
typedef  int int32_t ;
struct TYPE_2__ {struct ath9k_percal_data* calData; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t AR_PHY_NEW_ADC_DC_OFFSET_CORR_ENABLE ; 
 int /*<<< orphan*/  CALIBRATE ; 
 size_t FUNC1 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,size_t) ; 
 struct ath_common* FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*,size_t,...) ; 

__attribute__((used)) static void FUNC5(struct ath_hw *ah, u8 numChains)
{
	struct ath_common *common = FUNC3(ah);
	u32 iOddMeasOffset, iEvenMeasOffset, val, i;
	int32_t qOddMeasOffset, qEvenMeasOffset, qDcMismatch, iDcMismatch;
	const struct ath9k_percal_data *calData =
		ah->cal_list_curr->calData;
	u32 numSamples =
		(1 << (calData->calCountMax + 5)) * calData->calNumSamples;

	for (i = 0; i < numChains; i++) {
		iOddMeasOffset = ah->totalAdcDcOffsetIOddPhase[i];
		iEvenMeasOffset = ah->totalAdcDcOffsetIEvenPhase[i];
		qOddMeasOffset = ah->totalAdcDcOffsetQOddPhase[i];
		qEvenMeasOffset = ah->totalAdcDcOffsetQEvenPhase[i];

		FUNC4(common, CALIBRATE,
			"Starting ADC DC Offset Cal for Chain %d\n", i);

		FUNC4(common, CALIBRATE, "Chn %d pwr_meas_odd_i = %d\n",
			i, iOddMeasOffset);
		FUNC4(common, CALIBRATE, "Chn %d pwr_meas_even_i = %d\n",
			i, iEvenMeasOffset);
		FUNC4(common, CALIBRATE, "Chn %d pwr_meas_odd_q = %d\n",
			i, qOddMeasOffset);
		FUNC4(common, CALIBRATE, "Chn %d pwr_meas_even_q = %d\n",
			i, qEvenMeasOffset);

		iDcMismatch = (((iEvenMeasOffset - iOddMeasOffset) * 2) /
			       numSamples) & 0x1ff;
		qDcMismatch = (((qOddMeasOffset - qEvenMeasOffset) * 2) /
			       numSamples) & 0x1ff;

		FUNC4(common, CALIBRATE,
			"Chn %d dc_offset_mismatch_i = 0x%08x\n",
			i, iDcMismatch);
		FUNC4(common, CALIBRATE,
			"Chn %d dc_offset_mismatch_q = 0x%08x\n",
			i, qDcMismatch);

		val = FUNC1(ah, FUNC0(i));
		val &= 0xc0000fff;
		val |= (qDcMismatch << 12) | (iDcMismatch << 21);
		FUNC2(ah, FUNC0(i), val);

		FUNC4(common, CALIBRATE,
			"ADC DC Offset Cal done for Chain %d\n", i);
	}

	FUNC2(ah, FUNC0(0),
		  FUNC1(ah, FUNC0(0)) |
		  AR_PHY_NEW_ADC_DC_OFFSET_CORR_ENABLE);
}