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
struct ath_hw {int WARegVal; int (* external_reset ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AH_WAIT_TIMEOUT ; 
 int AR9340_INTR_SYNC_LOCAL_TIMEOUT ; 
 int /*<<< orphan*/  AR_INTR_SYNC_CAUSE ; 
 int /*<<< orphan*/  AR_INTR_SYNC_ENABLE ; 
 int AR_INTR_SYNC_LOCAL_TIMEOUT ; 
 int AR_INTR_SYNC_RADM_CPL_TIMEOUT ; 
 int AR_NUM_QCU ; 
 int /*<<< orphan*/  AR_RC ; 
 int AR_RC_AHB ; 
 int AR_RC_HOSTIF ; 
 int /*<<< orphan*/  AR_RTC_DERIVED_CLK ; 
 int /*<<< orphan*/  AR_RTC_DERIVED_CLK_PERIOD ; 
 int /*<<< orphan*/  AR_RTC_FORCE_WAKE ; 
 int AR_RTC_FORCE_WAKE_EN ; 
 int AR_RTC_FORCE_WAKE_ON_INT ; 
 int /*<<< orphan*/  AR_RTC_RC ; 
 int AR_RTC_RC_COLD_RESET ; 
 int /*<<< orphan*/  AR_RTC_RC_M ; 
 int AR_RTC_RC_MAC_COLD ; 
 int AR_RTC_RC_MAC_WARM ; 
 int AR_RTC_RC_WARM_RESET ; 
 int /*<<< orphan*/  AR_RTC_RESET ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  AR_WA ; 
 int ATH9K_RESET_COLD ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 int FUNC6 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RESET ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*) ; 
 scalar_t__ FUNC11 (struct ath_hw*) ; 
 int FUNC12 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int) ; 

__attribute__((used)) static bool FUNC18(struct ath_hw *ah, int type)
{
	u32 rst_flags;
	u32 tmpReg;

	if (FUNC0(ah)) {
		FUNC7(ah, AR_RTC_DERIVED_CLK,
			      AR_RTC_DERIVED_CLK_PERIOD, 1);
		(void)FUNC6(ah, AR_RTC_DERIVED_CLK);
	}

	FUNC4(ah);

	if (FUNC1(ah)) {
		FUNC8(ah, AR_WA, ah->WARegVal);
		FUNC17(10);
	}

	FUNC8(ah, AR_RTC_FORCE_WAKE, AR_RTC_FORCE_WAKE_EN |
		  AR_RTC_FORCE_WAKE_ON_INT);

	if (FUNC0(ah)) {
		rst_flags = AR_RTC_RC_MAC_WARM | AR_RTC_RC_MAC_COLD |
			AR_RTC_RC_COLD_RESET | AR_RTC_RC_WARM_RESET;
	} else {
		tmpReg = FUNC6(ah, AR_INTR_SYNC_CAUSE);
		if (FUNC3(ah))
			tmpReg &= AR9340_INTR_SYNC_LOCAL_TIMEOUT;
		else
			tmpReg &= AR_INTR_SYNC_LOCAL_TIMEOUT |
				  AR_INTR_SYNC_RADM_CPL_TIMEOUT;

		if (tmpReg) {
			u32 val;
			FUNC8(ah, AR_INTR_SYNC_ENABLE, 0);

			val = AR_RC_HOSTIF;
			if (!FUNC1(ah))
				val |= AR_RC_AHB;
			FUNC8(ah, AR_RC, val);

		} else if (!FUNC1(ah))
			FUNC8(ah, AR_RC, AR_RC_AHB);

		rst_flags = AR_RTC_RC_MAC_WARM;
		if (type == ATH9K_RESET_COLD)
			rst_flags |= AR_RTC_RC_MAC_COLD;
	}

	if (FUNC2(ah)) {
		int npend = 0;
		int i;

		/* AR9330 WAR:
		 * call external reset function to reset WMAC if:
		 * - doing a cold reset
		 * - we have pending frames in the TX queues
		 */

		for (i = 0; i < AR_NUM_QCU; i++) {
			npend = FUNC12(ah, i);
			if (npend)
				break;
		}

		if (ah->external_reset &&
		    (npend || type == ATH9K_RESET_COLD)) {
			int reset_err = 0;

			FUNC14(FUNC10(ah), RESET,
				"reset MAC via external reset\n");

			reset_err = ah->external_reset();
			if (reset_err) {
				FUNC15(FUNC10(ah),
					"External reset failed, err=%d\n",
					reset_err);
				return false;
			}

			FUNC8(ah, AR_RTC_RESET, 1);
		}
	}

	if (FUNC11(ah))
		FUNC9(ah);

	FUNC8(ah, AR_RTC_RC, rst_flags);

	FUNC5(ah);

	FUNC17(50);

	FUNC8(ah, AR_RTC_RC, 0);
	if (!FUNC13(ah, AR_RTC_RC, AR_RTC_RC_M, 0, AH_WAIT_TIMEOUT)) {
		FUNC14(FUNC10(ah), RESET, "RTC stuck in MAC reset\n");
		return false;
	}

	if (!FUNC0(ah))
		FUNC8(ah, AR_RC, 0);

	if (FUNC0(ah))
		FUNC17(50);

	return true;
}