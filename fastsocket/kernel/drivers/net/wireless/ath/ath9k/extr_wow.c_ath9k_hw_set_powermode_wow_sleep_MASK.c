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
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AH_WAIT_TIMEOUT ; 
 int /*<<< orphan*/  AR_CR ; 
 int AR_CR_RXD ; 
 int /*<<< orphan*/  AR_CR_RXE ; 
 int /*<<< orphan*/  AR_DIAG_SW ; 
 int /*<<< orphan*/  AR_RTC_FORCE_WAKE ; 
 int AR_RTC_FORCE_WAKE_ON_INT ; 
 int /*<<< orphan*/  AR_RXDP ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  AR_STA_ID1 ; 
 int /*<<< orphan*/  AR_STA_ID1_PWR_SAV ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 struct ath_common* FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_common*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ath_hw *ah)
{
	struct ath_common *common = FUNC5(ah);

	FUNC3(ah, AR_STA_ID1, AR_STA_ID1_PWR_SAV);

	/* set rx disable bit */
	FUNC4(ah, AR_CR, AR_CR_RXD);

	if (!FUNC6(ah, AR_CR, AR_CR_RXE, 0, AH_WAIT_TIMEOUT)) {
		FUNC7(common, "Failed to stop Rx DMA in 10ms AR_CR=0x%08x AR_DIAG_SW=0x%08x\n",
			FUNC2(ah, AR_CR), FUNC2(ah, AR_DIAG_SW));
		return;
	} else {
		if (!FUNC1(ah))
			FUNC4(ah, AR_RXDP, 0x0);
	}

	/* AR9280 WoW has sleep issue, do not set it to sleep */
	if (FUNC0(ah))
		return;

	FUNC4(ah, AR_RTC_FORCE_WAKE, AR_RTC_FORCE_WAKE_ON_INT);
}