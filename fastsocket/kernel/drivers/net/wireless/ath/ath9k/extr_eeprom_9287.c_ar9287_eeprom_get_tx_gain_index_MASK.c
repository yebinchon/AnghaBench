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
typedef  scalar_t__ u8 ;
typedef  size_t u16 ;
struct chan_centers {int /*<<< orphan*/  synth_center; } ;
struct cal_data_op_loop_ar9287 {scalar_t__** pwrPdg; } ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;
typedef  int int8_t ;

/* Variables and functions */
 scalar_t__ AR5416_BCHAN_UNUSED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,struct ath9k_channel*,struct chan_centers*) ; 
 int FUNC3 (scalar_t__,scalar_t__*,size_t,size_t*,size_t*) ; 

__attribute__((used)) static void FUNC4(struct ath_hw *ah,
			    struct ath9k_channel *chan,
			    struct cal_data_op_loop_ar9287 *pRawDatasetOpLoop,
			    u8 *pCalChans,  u16 availPiers, int8_t *pPwr)
{
	u16 idxL = 0, idxR = 0, numPiers;
	bool match;
	struct chan_centers centers;

	FUNC2(ah, chan, &centers);

	for (numPiers = 0; numPiers < availPiers; numPiers++) {
		if (pCalChans[numPiers] == AR5416_BCHAN_UNUSED)
			break;
	}

	match = FUNC3(
		(u8)FUNC0(centers.synth_center, FUNC1(chan)),
		pCalChans, numPiers, &idxL, &idxR);

	if (match) {
		*pPwr = (int8_t) pRawDatasetOpLoop[idxL].pwrPdg[0][0];
	} else {
		*pPwr = ((int8_t) pRawDatasetOpLoop[idxL].pwrPdg[0][0] +
			 (int8_t) pRawDatasetOpLoop[idxR].pwrPdg[0][0])/2;
	}

}