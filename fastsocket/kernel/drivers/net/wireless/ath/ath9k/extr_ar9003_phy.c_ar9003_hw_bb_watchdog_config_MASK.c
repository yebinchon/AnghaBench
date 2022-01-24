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
struct ath_hw {int bb_watchdog_timeout_ms; scalar_t__ curchan; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int AR_PHY_WATCHDOG_CNTL2_MASK ; 
 int /*<<< orphan*/  AR_PHY_WATCHDOG_CTL_1 ; 
 int /*<<< orphan*/  AR_PHY_WATCHDOG_CTL_2 ; 
 int AR_PHY_WATCHDOG_IDLE_ENABLE ; 
 int AR_PHY_WATCHDOG_IDLE_MASK ; 
 int AR_PHY_WATCHDOG_IRQ_ENABLE ; 
 int AR_PHY_WATCHDOG_NON_IDLE_ENABLE ; 
 int AR_PHY_WATCHDOG_NON_IDLE_MASK ; 
 int AR_PHY_WATCHDOG_RST_ENABLE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RESET ; 
 struct ath_common* FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 

void FUNC5(struct ath_hw *ah)
{
	struct ath_common *common = FUNC3(ah);
	u32 idle_tmo_ms = ah->bb_watchdog_timeout_ms;
	u32 val, idle_count;

	if (!idle_tmo_ms) {
		/* disable IRQ, disable chip-reset for BB panic */
		FUNC2(ah, AR_PHY_WATCHDOG_CTL_2,
			  FUNC1(ah, AR_PHY_WATCHDOG_CTL_2) &
			  ~(AR_PHY_WATCHDOG_RST_ENABLE |
			    AR_PHY_WATCHDOG_IRQ_ENABLE));

		/* disable watchdog in non-IDLE mode, disable in IDLE mode */
		FUNC2(ah, AR_PHY_WATCHDOG_CTL_1,
			  FUNC1(ah, AR_PHY_WATCHDOG_CTL_1) &
			  ~(AR_PHY_WATCHDOG_NON_IDLE_ENABLE |
			    AR_PHY_WATCHDOG_IDLE_ENABLE));

		FUNC4(common, RESET, "Disabled BB Watchdog\n");
		return;
	}

	/* enable IRQ, disable chip-reset for BB watchdog */
	val = FUNC1(ah, AR_PHY_WATCHDOG_CTL_2) & AR_PHY_WATCHDOG_CNTL2_MASK;
	FUNC2(ah, AR_PHY_WATCHDOG_CTL_2,
		  (val | AR_PHY_WATCHDOG_IRQ_ENABLE) &
		  ~AR_PHY_WATCHDOG_RST_ENABLE);

	/* bound limit to 10 secs */
	if (idle_tmo_ms > 10000)
		idle_tmo_ms = 10000;

	/*
	 * The time unit for watchdog event is 2^15 44/88MHz cycles.
	 *
	 * For HT20 we have a time unit of 2^15/44 MHz = .74 ms per tick
	 * For HT40 we have a time unit of 2^15/88 MHz = .37 ms per tick
	 *
	 * Given we use fast clock now in 5 GHz, these time units should
	 * be common for both 2 GHz and 5 GHz.
	 */
	idle_count = (100 * idle_tmo_ms) / 74;
	if (ah->curchan && FUNC0(ah->curchan))
		idle_count = (100 * idle_tmo_ms) / 37;

	/*
	 * enable watchdog in non-IDLE mode, disable in IDLE mode,
	 * set idle time-out.
	 */
	FUNC2(ah, AR_PHY_WATCHDOG_CTL_1,
		  AR_PHY_WATCHDOG_NON_IDLE_ENABLE |
		  AR_PHY_WATCHDOG_IDLE_MASK |
		  (AR_PHY_WATCHDOG_NON_IDLE_MASK & (idle_count << 2)));

	FUNC4(common, RESET, "Enabled BB Watchdog timeout (%u ms)\n",
		idle_tmo_ms);
}