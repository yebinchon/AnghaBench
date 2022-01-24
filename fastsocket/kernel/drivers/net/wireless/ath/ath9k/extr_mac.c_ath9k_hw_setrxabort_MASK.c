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
typedef  int /*<<< orphan*/  u32 ;
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AH_WAIT_TIMEOUT ; 
 int AR_DIAG_RX_ABORT ; 
 int AR_DIAG_RX_DIS ; 
 int /*<<< orphan*/  AR_DIAG_SW ; 
 int /*<<< orphan*/  AR_OBS_BUS_1 ; 
 int /*<<< orphan*/  AR_OBS_BUS_1_RX_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

bool FUNC6(struct ath_hw *ah, bool set)
{
	u32 reg;

	if (set) {
		FUNC2(ah, AR_DIAG_SW,
			    (AR_DIAG_RX_DIS | AR_DIAG_RX_ABORT));

		if (!FUNC4(ah, AR_OBS_BUS_1, AR_OBS_BUS_1_RX_STATE,
				   0, AH_WAIT_TIMEOUT)) {
			FUNC0(ah, AR_DIAG_SW,
				    (AR_DIAG_RX_DIS |
				     AR_DIAG_RX_ABORT));

			reg = FUNC1(ah, AR_OBS_BUS_1);
			FUNC5(FUNC3(ah),
				"RX failed to go idle in 10 ms RXSM=0x%x\n",
				reg);

			return false;
		}
	} else {
		FUNC0(ah, AR_DIAG_SW,
			    (AR_DIAG_RX_DIS | AR_DIAG_RX_ABORT));
	}

	return true;
}