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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ tx_done_old; } ;
struct ixgbe_ring {int /*<<< orphan*/  state; TYPE_1__ tx_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  __IXGBE_HANG_CHECK_ARMED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_ring*) ; 
 scalar_t__ FUNC2 (struct ixgbe_ring*) ; 
 scalar_t__ FUNC3 (struct ixgbe_ring*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC5(struct ixgbe_ring *tx_ring)
{
	u32 tx_done = FUNC2(tx_ring);
	u32 tx_done_old = tx_ring->tx_stats.tx_done_old;
	u32 tx_pending = FUNC3(tx_ring);
	bool ret = false;

	FUNC1(tx_ring);

	/*
	 * Check for a hung queue, but be thorough. This verifies
	 * that a transmit has been completed since the previous
	 * check AND there is at least one packet pending. The
	 * ARMED bit is set to indicate a potential hang. The
	 * bit is cleared if a pause frame is received to remove
	 * false hang detection due to PFC or 802.3x frames. By
	 * requiring this to fail twice we avoid races with
	 * pfc clearing the ARMED bit and conditions where we
	 * run the check_tx_hang logic with a transmit completion
	 * pending but without time to complete it yet.
	 */
	if ((tx_done_old == tx_done) && tx_pending) {
		/* make sure it is true for two checks in a row */
		ret = FUNC4(__IXGBE_HANG_CHECK_ARMED,
				       &tx_ring->state);
	} else {
		/* update completed stats and continue */
		tx_ring->tx_stats.tx_done_old = tx_done;
		/* reset the countdown */
		FUNC0(__IXGBE_HANG_CHECK_ARMED, &tx_ring->state);
	}

	return ret;
}