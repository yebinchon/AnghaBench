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
typedef  int /*<<< orphan*/  u8 ;
struct wl12xx_vif {int dummy; } ;
struct wl1271 {int /*<<< orphan*/  wl_lock; int /*<<< orphan*/  hw; scalar_t__* queue_stop_reasons; } ;
typedef  enum wlcore_queue_stop_reason { ____Placeholder_wlcore_queue_stop_reason } wlcore_queue_stop_reason ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__*) ; 
 int FUNC5 (struct wl12xx_vif*,int /*<<< orphan*/ ) ; 

void FUNC6(struct wl1271 *wl, struct wl12xx_vif *wlvif, u8 queue,
		       enum wlcore_queue_stop_reason reason)
{
	unsigned long flags;
	int hwq = FUNC5(wlvif, queue);

	FUNC2(&wl->wl_lock, flags);

	/* queue should not be clear for this reason */
	FUNC0(!FUNC4(reason, &wl->queue_stop_reasons[hwq]));

	if (wl->queue_stop_reasons[hwq])
		goto out;

	FUNC1(wl->hw, hwq);

out:
	FUNC3(&wl->wl_lock, flags);
}