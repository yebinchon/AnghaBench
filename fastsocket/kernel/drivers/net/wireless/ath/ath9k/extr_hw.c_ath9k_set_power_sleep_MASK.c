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
 int /*<<< orphan*/  AR_MCI_INTERRUPT_RX_MSG_EN ; 
 int /*<<< orphan*/  AR_NDP2_TIMER_MODE ; 
 int /*<<< orphan*/  AR_RC ; 
 int AR_RC_AHB ; 
 int AR_RC_HOSTIF ; 
 int /*<<< orphan*/  AR_RTC_FORCE_WAKE ; 
 int AR_RTC_FORCE_WAKE_EN ; 
 int /*<<< orphan*/  AR_RTC_RESET ; 
 int AR_RTC_RESET_EN ; 
 int /*<<< orphan*/  AR_SLP32_INC ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 scalar_t__ FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  AR_STA_ID1 ; 
 int /*<<< orphan*/  AR_STA_ID1_PWR_SAV ; 
 int /*<<< orphan*/  AR_TIMER_MODE ; 
 int /*<<< orphan*/  AR_WA ; 
 int AR_WA_D3_L1_DISABLE ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct ath_hw *ah)
{
	FUNC7(ah, AR_STA_ID1, AR_STA_ID1_PWR_SAV);

	if (FUNC4(ah) || FUNC5(ah)) {
		FUNC6(ah, AR_TIMER_MODE, 0xff);
		FUNC6(ah, AR_NDP2_TIMER_MODE, 0xff);
		FUNC6(ah, AR_SLP32_INC, 0xfffff);
		/* xxx Required for WLAN only case ? */
		FUNC8(ah, AR_MCI_INTERRUPT_RX_MSG_EN, 0);
		FUNC10(100);
	}

	/*
	 * Clear the RTC force wake bit to allow the
	 * mac to go to sleep.
	 */
	FUNC6(ah, AR_RTC_FORCE_WAKE, AR_RTC_FORCE_WAKE_EN);

	if (FUNC9(ah))
		FUNC10(100);

	if (!FUNC1(ah) && !FUNC3(ah))
		FUNC8(ah, AR_RC, AR_RC_AHB | AR_RC_HOSTIF);

	/* Shutdown chip. Active low */
	if (!FUNC0(ah) && !FUNC2(ah)) {
		FUNC6(ah, AR_RTC_RESET, AR_RTC_RESET_EN);
		FUNC10(2);
	}

	/* Clear Bit 14 of AR_WA after putting chip into Full Sleep mode. */
	if (FUNC3(ah))
		FUNC8(ah, AR_WA, ah->WARegVal & ~AR_WA_D3_L1_DISABLE);
}