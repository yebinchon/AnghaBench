#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct wl1271 {int platform_quirks; scalar_t__ state; int watchdog_recovery; int /*<<< orphan*/  deferred_rx_queue; int /*<<< orphan*/  deferred_tx_queue; int /*<<< orphan*/  wl_lock; int /*<<< orphan*/  flags; TYPE_1__* fw_status_1; int /*<<< orphan*/  fw_status_2; } ;
struct TYPE_3__ {int /*<<< orphan*/  intr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_IRQ ; 
 int EIO ; 
 int WL1271_ACX_INTR_DATA ; 
 int WL1271_ACX_INTR_EVENT_A ; 
 int WL1271_ACX_INTR_EVENT_B ; 
 int WL1271_ACX_INTR_HW_AVAILABLE ; 
 int WL1271_ACX_INTR_INIT_COMPLETE ; 
 int WL1271_ACX_INTR_WATCHDOG ; 
 int WL1271_ACX_SW_INTR_WATCHDOG ; 
 unsigned int WL1271_DEFERRED_QUEUE_LIMIT ; 
 int /*<<< orphan*/  WL1271_FLAG_FW_TX_BUSY ; 
 int /*<<< orphan*/  WL1271_FLAG_IRQ_RUNNING ; 
 int WL1271_IRQ_MAX_LOOPS ; 
 int WL12XX_PLATFORM_QUIRK_EDGE_IRQ ; 
 int WLCORE_ALL_INTR_MASK ; 
 scalar_t__ WLCORE_STATE_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (struct wl1271*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC13 (struct wl1271*) ; 
 int FUNC14 (struct wl1271*) ; 
 scalar_t__ FUNC15 (struct wl1271*) ; 
 int FUNC16 (struct wl1271*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC18 (struct wl1271*) ; 
 int FUNC19 (struct wl1271*,TYPE_1__*) ; 
 int FUNC20 (struct wl1271*) ; 

__attribute__((used)) static int FUNC21(struct wl1271 *wl)
{
	int ret = 0;
	u32 intr;
	int loopcount = WL1271_IRQ_MAX_LOOPS;
	bool done = false;
	unsigned int defer_count;
	unsigned long flags;

	/*
	 * In case edge triggered interrupt must be used, we cannot iterate
	 * more than once without introducing race conditions with the hardirq.
	 */
	if (wl->platform_quirks & WL12XX_PLATFORM_QUIRK_EDGE_IRQ)
		loopcount = 1;

	FUNC9(DEBUG_IRQ, "IRQ work");

	if (FUNC8(wl->state != WLCORE_STATE_ON))
		goto out;

	ret = FUNC14(wl);
	if (ret < 0)
		goto out;

	while (!done && loopcount--) {
		/*
		 * In order to avoid a race with the hardirq, clear the flag
		 * before acknowledging the chip. Since the mutex is held,
		 * wl1271_ps_elp_wakeup cannot be called concurrently.
		 */
		FUNC0(WL1271_FLAG_IRQ_RUNNING, &wl->flags);
		FUNC4();

		ret = FUNC16(wl, wl->fw_status_1, wl->fw_status_2);
		if (ret < 0)
			goto out;

		FUNC18(wl);

		intr = FUNC1(wl->fw_status_1->intr);
		intr &= WLCORE_ALL_INTR_MASK;
		if (!intr) {
			done = true;
			continue;
		}

		if (FUNC8(intr & WL1271_ACX_INTR_WATCHDOG)) {
			FUNC10("HW watchdog interrupt received! starting recovery.");
			wl->watchdog_recovery = true;
			ret = -EIO;

			/* restarting the chip. ignore any other interrupt. */
			goto out;
		}

		if (FUNC8(intr & WL1271_ACX_SW_INTR_WATCHDOG)) {
			FUNC10("SW watchdog interrupt received! "
				     "starting recovery.");
			wl->watchdog_recovery = true;
			ret = -EIO;

			/* restarting the chip. ignore any other interrupt. */
			goto out;
		}

		if (FUNC2(intr & WL1271_ACX_INTR_DATA)) {
			FUNC9(DEBUG_IRQ, "WL1271_ACX_INTR_DATA");

			ret = FUNC19(wl, wl->fw_status_1);
			if (ret < 0)
				goto out;

			/* Check if any tx blocks were freed */
			FUNC5(&wl->wl_lock, flags);
			if (!FUNC7(WL1271_FLAG_FW_TX_BUSY, &wl->flags) &&
			    FUNC15(wl) > 0) {
				FUNC6(&wl->wl_lock, flags);
				/*
				 * In order to avoid starvation of the TX path,
				 * call the work function directly.
				 */
				ret = FUNC20(wl);
				if (ret < 0)
					goto out;
			} else {
				FUNC6(&wl->wl_lock, flags);
			}

			/* check for tx results */
			ret = FUNC17(wl);
			if (ret < 0)
				goto out;

			/* Make sure the deferred queues don't get too long */
			defer_count = FUNC3(&wl->deferred_tx_queue) +
				      FUNC3(&wl->deferred_rx_queue);
			if (defer_count > WL1271_DEFERRED_QUEUE_LIMIT)
				FUNC12(wl);
		}

		if (intr & WL1271_ACX_INTR_EVENT_A) {
			FUNC9(DEBUG_IRQ, "WL1271_ACX_INTR_EVENT_A");
			ret = FUNC11(wl, 0);
			if (ret < 0)
				goto out;
		}

		if (intr & WL1271_ACX_INTR_EVENT_B) {
			FUNC9(DEBUG_IRQ, "WL1271_ACX_INTR_EVENT_B");
			ret = FUNC11(wl, 1);
			if (ret < 0)
				goto out;
		}

		if (intr & WL1271_ACX_INTR_INIT_COMPLETE)
			FUNC9(DEBUG_IRQ,
				     "WL1271_ACX_INTR_INIT_COMPLETE");

		if (intr & WL1271_ACX_INTR_HW_AVAILABLE)
			FUNC9(DEBUG_IRQ, "WL1271_ACX_INTR_HW_AVAILABLE");
	}

	FUNC13(wl);

out:
	return ret;
}