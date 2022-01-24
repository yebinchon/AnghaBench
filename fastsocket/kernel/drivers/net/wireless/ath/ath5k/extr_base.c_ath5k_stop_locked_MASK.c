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
struct ath5k_hw {int /*<<< orphan*/  irq; int /*<<< orphan*/  status; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATH5K_DEBUG_RESET ; 
 int /*<<< orphan*/  ATH_STAT_INVALID ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct ath5k_hw *ah)
{

	FUNC0(ah, ATH5K_DEBUG_RESET, "invalid %u\n",
			FUNC9(ATH_STAT_INVALID, ah->status));

	/*
	 * Shutdown the hardware and driver:
	 *    stop output from above
	 *    disable interrupts
	 *    turn off timers
	 *    turn off the radio
	 *    clear transmit machinery
	 *    clear receive machinery
	 *    drain and release tx queues
	 *    reclaim beacon resources
	 *    power down hardware
	 *
	 * Note that some of this work is not possible if the
	 * hardware is gone (invalid).
	 */
	FUNC7(ah->hw);

	if (!FUNC9(ATH_STAT_INVALID, ah->status)) {
		FUNC5(ah);
		FUNC4(ah, 0);
		FUNC8(ah->irq);
		FUNC6(ah);
		FUNC2(ah);
		FUNC1(ah);
		FUNC3(ah);
	}

	return 0;
}