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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ tx_intr_mitigation; scalar_t__ rx_intr_mitigation; } ;
struct ath_hw {int imrs2_reg; TYPE_1__ config; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int /*<<< orphan*/  AR_IMR ; 
 int AR_IMR_BCNMISC ; 
 int AR_IMR_RXERR ; 
 int AR_IMR_RXINTM ; 
 int AR_IMR_RXMINTR ; 
 int AR_IMR_RXOK ; 
 int AR_IMR_RXOK_HP ; 
 int AR_IMR_RXOK_LP ; 
 int AR_IMR_RXORN ; 
 int /*<<< orphan*/  AR_IMR_S2 ; 
 int AR_IMR_S2_GTT ; 
 int AR_IMR_TXERR ; 
 int AR_IMR_TXINTM ; 
 int AR_IMR_TXMINTR ; 
 int AR_IMR_TXOK ; 
 int AR_IMR_TXURN ; 
 int /*<<< orphan*/  AR_INTR_PRIO_ASYNC_ENABLE ; 
 int /*<<< orphan*/  AR_INTR_PRIO_ASYNC_MASK ; 
 int /*<<< orphan*/  AR_INTR_PRIO_SYNC_ENABLE ; 
 int /*<<< orphan*/  AR_INTR_PRIO_SYNC_MASK ; 
 int /*<<< orphan*/  AR_INTR_SYNC_CAUSE ; 
 int AR_INTR_SYNC_DEFAULT ; 
 int /*<<< orphan*/  AR_INTR_SYNC_ENABLE ; 
 int AR_INTR_SYNC_HOST1_FATAL ; 
 int /*<<< orphan*/  AR_INTR_SYNC_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 scalar_t__ FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct ath_hw *ah,
					  enum nl80211_iftype opmode)
{
	u32 sync_default = AR_INTR_SYNC_DEFAULT;
	u32 imr_reg = AR_IMR_TXERR |
		AR_IMR_TXURN |
		AR_IMR_RXERR |
		AR_IMR_RXORN |
		AR_IMR_BCNMISC;

	if (FUNC2(ah) || FUNC3(ah))
		sync_default &= ~AR_INTR_SYNC_HOST1_FATAL;

	if (FUNC1(ah)) {
		imr_reg |= AR_IMR_RXOK_HP;
		if (ah->config.rx_intr_mitigation)
			imr_reg |= AR_IMR_RXINTM | AR_IMR_RXMINTR;
		else
			imr_reg |= AR_IMR_RXOK_LP;

	} else {
		if (ah->config.rx_intr_mitigation)
			imr_reg |= AR_IMR_RXINTM | AR_IMR_RXMINTR;
		else
			imr_reg |= AR_IMR_RXOK;
	}

	if (ah->config.tx_intr_mitigation)
		imr_reg |= AR_IMR_TXINTM | AR_IMR_TXMINTR;
	else
		imr_reg |= AR_IMR_TXOK;

	FUNC4(ah);

	FUNC6(ah, AR_IMR, imr_reg);
	ah->imrs2_reg |= AR_IMR_S2_GTT;
	FUNC6(ah, AR_IMR_S2, ah->imrs2_reg);

	if (!FUNC0(ah)) {
		FUNC6(ah, AR_INTR_SYNC_CAUSE, 0xFFFFFFFF);
		FUNC6(ah, AR_INTR_SYNC_ENABLE, sync_default);
		FUNC6(ah, AR_INTR_SYNC_MASK, 0);
	}

	FUNC5(ah);

	if (FUNC1(ah)) {
		FUNC6(ah, AR_INTR_PRIO_ASYNC_ENABLE, 0);
		FUNC6(ah, AR_INTR_PRIO_ASYNC_MASK, 0);
		FUNC6(ah, AR_INTR_PRIO_SYNC_ENABLE, 0);
		FUNC6(ah, AR_INTR_PRIO_SYNC_MASK, 0);
	}
}