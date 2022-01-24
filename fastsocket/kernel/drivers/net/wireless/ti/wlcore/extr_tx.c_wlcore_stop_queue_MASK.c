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
struct wl1271 {int /*<<< orphan*/  wl_lock; } ;
typedef  enum wlcore_queue_stop_reason { ____Placeholder_wlcore_queue_stop_reason } wlcore_queue_stop_reason ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct wl1271*,struct wl12xx_vif*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct wl1271 *wl, struct wl12xx_vif *wlvif, u8 queue,
		       enum wlcore_queue_stop_reason reason)
{
	unsigned long flags;

	FUNC0(&wl->wl_lock, flags);
	FUNC2(wl, wlvif, queue, reason);
	FUNC1(&wl->wl_lock, flags);
}