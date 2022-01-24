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
struct ath_hw {int WARegVal; } ;

/* Variables and functions */
 int /*<<< orphan*/  AH_WAIT_TIMEOUT ; 
 int /*<<< orphan*/  AR_RC ; 
 int AR_RC_AHB ; 
 int /*<<< orphan*/  AR_RTC_FORCE_WAKE ; 
 int AR_RTC_FORCE_WAKE_EN ; 
 int AR_RTC_FORCE_WAKE_ON_INT ; 
 int /*<<< orphan*/  AR_RTC_RESET ; 
 int /*<<< orphan*/  AR_RTC_STATUS ; 
 int /*<<< orphan*/  AR_RTC_STATUS_M ; 
 int /*<<< orphan*/  AR_RTC_STATUS_ON ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  AR_WA ; 
 int /*<<< orphan*/  ATH9K_RESET_WARM ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RESET ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 int FUNC6 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static bool FUNC10(struct ath_hw *ah)
{
	FUNC2(ah);

	if (FUNC1(ah)) {
		FUNC4(ah, AR_WA, ah->WARegVal);
		FUNC9(10);
	}

	FUNC4(ah, AR_RTC_FORCE_WAKE, AR_RTC_FORCE_WAKE_EN |
		  AR_RTC_FORCE_WAKE_ON_INT);

	if (!FUNC0(ah) && !FUNC1(ah))
		FUNC4(ah, AR_RC, AR_RC_AHB);

	FUNC4(ah, AR_RTC_RESET, 0);

	FUNC3(ah);

	if (!FUNC1(ah))
		FUNC9(2);

	if (!FUNC0(ah) && !FUNC1(ah))
		FUNC4(ah, AR_RC, 0);

	FUNC4(ah, AR_RTC_RESET, 1);

	if (!FUNC7(ah,
			   AR_RTC_STATUS,
			   AR_RTC_STATUS_M,
			   AR_RTC_STATUS_ON,
			   AH_WAIT_TIMEOUT)) {
		FUNC8(FUNC5(ah), RESET, "RTC not waking up\n");
		return false;
	}

	return FUNC6(ah, ATH9K_RESET_WARM);
}