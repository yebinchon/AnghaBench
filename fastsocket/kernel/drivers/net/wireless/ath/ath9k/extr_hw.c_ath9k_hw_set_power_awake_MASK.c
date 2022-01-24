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
struct ath_hw {int /*<<< orphan*/  WARegVal; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_RTC_FORCE_WAKE ; 
 int /*<<< orphan*/  AR_RTC_FORCE_WAKE_EN ; 
 int /*<<< orphan*/  AR_RTC_RESET ; 
 int /*<<< orphan*/  AR_RTC_RESET_EN ; 
 int /*<<< orphan*/  AR_RTC_STATUS ; 
 int AR_RTC_STATUS_M ; 
 int AR_RTC_STATUS_ON ; 
 int AR_RTC_STATUS_SHUTDOWN ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  AR_STA_ID1 ; 
 int /*<<< orphan*/  AR_STA_ID1_PWR_SAV ; 
 int /*<<< orphan*/  AR_WA ; 
 int /*<<< orphan*/  ATH9K_RESET_POWER_ON ; 
 int POWER_UP_TIME ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static bool FUNC13(struct ath_hw *ah)
{
	u32 val;
	int i;

	/* Set Bits 14 and 17 of AR_WA before powering on the chip. */
	if (FUNC1(ah)) {
		FUNC5(ah, AR_WA, ah->WARegVal);
		FUNC12(10);
	}

	if ((FUNC3(ah, AR_RTC_STATUS) &
	     AR_RTC_STATUS_M) == AR_RTC_STATUS_SHUTDOWN) {
		if (!FUNC10(ah, ATH9K_RESET_POWER_ON)) {
			return false;
		}
		if (!FUNC1(ah))
			FUNC8(ah, NULL);
	}
	if (FUNC0(ah))
		FUNC4(ah, AR_RTC_RESET,
			    AR_RTC_RESET_EN);

	FUNC4(ah, AR_RTC_FORCE_WAKE,
		    AR_RTC_FORCE_WAKE_EN);
	FUNC12(50);

	for (i = POWER_UP_TIME / 50; i > 0; i--) {
		val = FUNC3(ah, AR_RTC_STATUS) & AR_RTC_STATUS_M;
		if (val == AR_RTC_STATUS_ON)
			break;
		FUNC12(50);
		FUNC4(ah, AR_RTC_FORCE_WAKE,
			    AR_RTC_FORCE_WAKE_EN);
	}
	if (i == 0) {
		FUNC11(FUNC7(ah),
			"Failed to wakeup in %uus\n",
			POWER_UP_TIME / 20);
		return false;
	}

	if (FUNC9(ah))
		FUNC6(ah);

	FUNC2(ah, AR_STA_ID1, AR_STA_ID1_PWR_SAV);

	return true;
}