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
struct wl1251 {scalar_t__ state; int scanning; int listen_int; int elp; int tx_queue_stopped; int /*<<< orphan*/  mutex; int /*<<< orphan*/  channel; scalar_t__ rssi_thold; int /*<<< orphan*/  power_level; int /*<<< orphan*/  station_mode; scalar_t__ next_tx_complete; scalar_t__ rx_last_id; scalar_t__ rx_current_buffer; scalar_t__ rx_handled; scalar_t__ rx_counter; scalar_t__ data_in_count; int /*<<< orphan*/  bss_type; int /*<<< orphan*/  bssid; int /*<<< orphan*/  elp_work; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  irq_work; int /*<<< orphan*/  hw; } ;
struct ieee80211_hw {struct wl1251* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MAX_BSS_TYPE ; 
 int /*<<< orphan*/  STATION_ACTIVE_MODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WL1251_DEFAULT_CHANNEL ; 
 int /*<<< orphan*/  WL1251_DEFAULT_POWER_LEVEL ; 
 scalar_t__ WL1251_STATE_OFF ; 
 scalar_t__ WL1251_STATE_ON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct wl1251*) ; 
 int /*<<< orphan*/  FUNC9 (struct wl1251*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct wl1251*) ; 
 int /*<<< orphan*/  FUNC12 (struct wl1251*) ; 

__attribute__((used)) static void FUNC13(struct ieee80211_hw *hw)
{
	struct wl1251 *wl = hw->priv;

	FUNC10("down");

	FUNC7(DEBUG_MAC80211, "mac80211 stop");

	FUNC5(&wl->mutex);

	FUNC0(wl->state != WL1251_STATE_ON);

	if (wl->scanning) {
		FUNC3(wl->hw, true);
		wl->scanning = false;
	}

	wl->state = WL1251_STATE_OFF;

	FUNC9(wl);

	FUNC6(&wl->mutex);

	FUNC2(&wl->irq_work);
	FUNC2(&wl->tx_work);
	FUNC1(&wl->elp_work);

	FUNC5(&wl->mutex);

	/* let's notify MAC80211 about the remaining pending TX frames */
	FUNC12(wl);
	FUNC11(wl);

	FUNC4(wl->bssid, 0, ETH_ALEN);
	wl->listen_int = 1;
	wl->bss_type = MAX_BSS_TYPE;

	wl->data_in_count = 0;
	wl->rx_counter = 0;
	wl->rx_handled = 0;
	wl->rx_current_buffer = 0;
	wl->rx_last_id = 0;
	wl->next_tx_complete = 0;
	wl->elp = false;
	wl->station_mode = STATION_ACTIVE_MODE;
	wl->tx_queue_stopped = false;
	wl->power_level = WL1251_DEFAULT_POWER_LEVEL;
	wl->rssi_thold = 0;
	wl->channel = WL1251_DEFAULT_CHANNEL;

	FUNC8(wl);

	FUNC6(&wl->mutex);
}