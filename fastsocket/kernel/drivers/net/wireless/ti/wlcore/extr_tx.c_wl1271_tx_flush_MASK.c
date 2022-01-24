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
struct wl1271 {scalar_t__ tx_frames_cnt; int /*<<< orphan*/  flush_mutex; int /*<<< orphan*/  mutex; int /*<<< orphan*/  tx_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int WL1271_TX_FLUSH_TIMEOUT ; 
 int WL12XX_MAX_LINKS ; 
 int /*<<< orphan*/  WLCORE_QUEUE_STOP_REASON_FLUSH ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 unsigned long FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC7 (struct wl1271*,int) ; 
 scalar_t__ FUNC8 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct wl1271*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct wl1271*,int /*<<< orphan*/ ) ; 

void FUNC13(struct wl1271 *wl)
{
	unsigned long timeout, start_time;
	int i;
	start_time = jiffies;
	timeout = start_time + FUNC5(WL1271_TX_FLUSH_TIMEOUT);

	/* only one flush should be in progress, for consistent queue state */
	FUNC2(&wl->flush_mutex);

	FUNC2(&wl->mutex);
	if (wl->tx_frames_cnt == 0 && FUNC8(wl) == 0) {
		FUNC3(&wl->mutex);
		goto out;
	}

	FUNC11(wl, WLCORE_QUEUE_STOP_REASON_FLUSH);

	while (!FUNC4(jiffies, timeout)) {
		FUNC6(DEBUG_MAC80211, "flushing tx buffer: %d %d",
			     wl->tx_frames_cnt,
			     FUNC8(wl));

		/* force Tx and give the driver some time to flush data */
		FUNC3(&wl->mutex);
		if (FUNC8(wl))
			FUNC9(&wl->tx_work);
		FUNC1(20);
		FUNC2(&wl->mutex);

		if ((wl->tx_frames_cnt == 0) &&
		    (FUNC8(wl) == 0)) {
			FUNC6(DEBUG_MAC80211, "tx flush took %d ms",
				     FUNC0(jiffies - start_time));
			goto out_wake;
		}
	}

	FUNC10("Unable to flush all TX buffers, "
		       "timed out (timeout %d ms",
		       WL1271_TX_FLUSH_TIMEOUT / 1000);

	/* forcibly flush all Tx buffers on our queues */
	for (i = 0; i < WL12XX_MAX_LINKS; i++)
		FUNC7(wl, i);

out_wake:
	FUNC12(wl, WLCORE_QUEUE_STOP_REASON_FLUSH);
	FUNC3(&wl->mutex);
out:
	FUNC3(&wl->flush_mutex);
}