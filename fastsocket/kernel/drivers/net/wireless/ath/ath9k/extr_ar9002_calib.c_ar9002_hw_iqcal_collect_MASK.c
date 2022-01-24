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
struct ath_hw {int /*<<< orphan*/ * totalIqCorrMeas; int /*<<< orphan*/ * totalPowerMeasQ; int /*<<< orphan*/ * totalPowerMeasI; int /*<<< orphan*/  cal_samples; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int AR5416_MAX_CHAINS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  CALIBRATE ; 
 scalar_t__ FUNC3 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ath_hw *ah)
{
	int i;

	for (i = 0; i < AR5416_MAX_CHAINS; i++) {
		ah->totalPowerMeasI[i] +=
			FUNC3(ah, FUNC0(i));
		ah->totalPowerMeasQ[i] +=
			FUNC3(ah, FUNC1(i));
		ah->totalIqCorrMeas[i] +=
			(int32_t) FUNC3(ah, FUNC2(i));
		FUNC5(FUNC4(ah), CALIBRATE,
			"%d: Chn %d pmi=0x%08x;pmq=0x%08x;iqcm=0x%08x;\n",
			ah->cal_samples, i, ah->totalPowerMeasI[i],
			ah->totalPowerMeasQ[i],
			ah->totalIqCorrMeas[i]);
	}
}