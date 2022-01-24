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
struct ath_hw {int /*<<< orphan*/ * totalAdcQEvenPhase; int /*<<< orphan*/ * totalAdcQOddPhase; int /*<<< orphan*/ * totalAdcIEvenPhase; int /*<<< orphan*/ * totalAdcIOddPhase; int /*<<< orphan*/  cal_samples; } ;

/* Variables and functions */
 int AR5416_MAX_CHAINS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  CALIBRATE ; 
 scalar_t__ FUNC4 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ath_hw *ah)
{
	int i;

	for (i = 0; i < AR5416_MAX_CHAINS; i++) {
		ah->totalAdcIOddPhase[i] +=
			FUNC4(ah, FUNC0(i));
		ah->totalAdcIEvenPhase[i] +=
			FUNC4(ah, FUNC1(i));
		ah->totalAdcQOddPhase[i] +=
			FUNC4(ah, FUNC2(i));
		ah->totalAdcQEvenPhase[i] +=
			FUNC4(ah, FUNC3(i));

		FUNC6(FUNC5(ah), CALIBRATE,
			"%d: Chn %d oddi=0x%08x; eveni=0x%08x; oddq=0x%08x; evenq=0x%08x;\n",
			ah->cal_samples, i,
			ah->totalAdcIOddPhase[i],
			ah->totalAdcIEvenPhase[i],
			ah->totalAdcQOddPhase[i],
			ah->totalAdcQEvenPhase[i]);
	}
}