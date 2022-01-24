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
struct wlcore_hw_queue_iter_data {int /*<<< orphan*/  hw_queue_map; scalar_t__ cur_running; struct ieee80211_vif* vif; } ;
struct wl12xx_vif {int hw_queue_base; scalar_t__ bss_type; } ;
struct wl1271 {scalar_t__* queue_stop_reasons; int /*<<< orphan*/  hw; } ;
struct ieee80211_vif {int* hw_queue; int cab_queue; } ;

/* Variables and functions */
 scalar_t__ BSS_TYPE_AP_BSS ; 
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int EBUSY ; 
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_RESUME_ALL ; 
 int IEEE80211_INVAL_HW_QUEUE ; 
 int NUM_TX_QUEUES ; 
 int WLCORE_NUM_MAC_ADDRESSES ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wlcore_hw_queue_iter_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct ieee80211_vif* FUNC3 (struct wl12xx_vif*) ; 
 int /*<<< orphan*/  wlcore_hw_queue_iter ; 

__attribute__((used)) static int FUNC4(struct wl1271 *wl,
					 struct wl12xx_vif *wlvif)
{
	struct ieee80211_vif *vif = FUNC3(wlvif);
	struct wlcore_hw_queue_iter_data iter_data = {};
	int i, q_base;

	iter_data.vif = vif;

	/* mark all bits taken by active interfaces */
	FUNC1(wl->hw,
					IEEE80211_IFACE_ITER_RESUME_ALL,
					wlcore_hw_queue_iter, &iter_data);

	/* the current vif is already running in mac80211 (resume/recovery) */
	if (iter_data.cur_running) {
		wlvif->hw_queue_base = vif->hw_queue[0];
		FUNC2(DEBUG_MAC80211,
			     "using pre-allocated hw queue base %d",
			     wlvif->hw_queue_base);

		/* interface type might have changed type */
		goto adjust_cab_queue;
	}

	q_base = FUNC0(iter_data.hw_queue_map,
				     WLCORE_NUM_MAC_ADDRESSES);
	if (q_base >= WLCORE_NUM_MAC_ADDRESSES)
		return -EBUSY;

	wlvif->hw_queue_base = q_base * NUM_TX_QUEUES;
	FUNC2(DEBUG_MAC80211, "allocating hw queue base: %d",
		     wlvif->hw_queue_base);

	for (i = 0; i < NUM_TX_QUEUES; i++) {
		wl->queue_stop_reasons[wlvif->hw_queue_base + i] = 0;
		/* register hw queues in mac80211 */
		vif->hw_queue[i] = wlvif->hw_queue_base + i;
	}

adjust_cab_queue:
	/* the last places are reserved for cab queues per interface */
	if (wlvif->bss_type == BSS_TYPE_AP_BSS)
		vif->cab_queue = NUM_TX_QUEUES * WLCORE_NUM_MAC_ADDRESSES +
				 wlvif->hw_queue_base / NUM_TX_QUEUES;
	else
		vif->cab_queue = IEEE80211_INVAL_HW_QUEUE;

	return 0;
}