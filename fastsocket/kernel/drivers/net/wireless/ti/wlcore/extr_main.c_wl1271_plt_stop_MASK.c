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
struct wl1271 {int plt; int /*<<< orphan*/  mutex; scalar_t__ rx_counter; int /*<<< orphan*/  plt_mode; int /*<<< orphan*/  state; int /*<<< orphan*/  sleep_auth; scalar_t__ flags; int /*<<< orphan*/  tx_watchdog_work; int /*<<< orphan*/  elp_work; int /*<<< orphan*/  recovery_work; int /*<<< orphan*/  netstack_work; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  PLT_OFF ; 
 int /*<<< orphan*/  WL1271_PSM_ILLEGAL ; 
 int /*<<< orphan*/  WLCORE_STATE_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC8 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC9 (struct wl1271*) ; 

int FUNC10(struct wl1271 *wl)
{
	int ret = 0;

	FUNC6("power down");

	/*
	 * Interrupts must be disabled before setting the state to OFF.
	 * Otherwise, the interrupt handler might be called and exit without
	 * reading the interrupt status.
	 */
	FUNC8(wl);
	FUNC2(&wl->mutex);
	if (!wl->plt) {
		FUNC3(&wl->mutex);

		/*
		 * This will not necessarily enable interrupts as interrupts
		 * may have been disabled when op_stop was called. It will,
		 * however, balance the above call to disable_interrupts().
		 */
		FUNC9(wl);

		FUNC4("cannot power down because not in PLT "
			     "state: %d", wl->state);
		ret = -EBUSY;
		goto out;
	}

	FUNC3(&wl->mutex);

	FUNC5(wl);
	FUNC1(&wl->netstack_work);
	FUNC1(&wl->recovery_work);
	FUNC0(&wl->elp_work);
	FUNC0(&wl->tx_watchdog_work);

	FUNC2(&wl->mutex);
	FUNC7(wl);
	wl->flags = 0;
	wl->sleep_auth = WL1271_PSM_ILLEGAL;
	wl->state = WLCORE_STATE_OFF;
	wl->plt = false;
	wl->plt_mode = PLT_OFF;
	wl->rx_counter = 0;
	FUNC3(&wl->mutex);

out:
	return ret;
}