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
typedef  int /*<<< orphan*/  u8 ;
typedef  void* u32 ;
struct wl1271 {int sg_enabled; int hw_pg_ver; int num_tx_desc; int mbox_size; void* priv; int /*<<< orphan*/  freezable_wq; int /*<<< orphan*/ * aggr_buf; int /*<<< orphan*/  dummy_packet; int /*<<< orphan*/ * fwlog; void* mbox; void* buffer_32; void* aggr_buf_size; int /*<<< orphan*/  nvs_loading_complete; int /*<<< orphan*/  flush_mutex; int /*<<< orphan*/  mutex; int /*<<< orphan*/  fw_type; int /*<<< orphan*/  state; int /*<<< orphan*/  wl_lock; int /*<<< orphan*/ ** tx_frames; struct wl1271* tx_frames_map; int /*<<< orphan*/  links_map; int /*<<< orphan*/  fwlog_waitq; scalar_t__ fwlog_size; scalar_t__ active_link_count; scalar_t__ active_sta_count; int /*<<< orphan*/  system_hlid; scalar_t__ platform_quirks; scalar_t__ quirks; scalar_t__ ap_fw_ps_map; scalar_t__ ap_ps_map; scalar_t__ recovery_count; int /*<<< orphan*/  sleep_auth; scalar_t__ flags; int /*<<< orphan*/  channel_type; int /*<<< orphan*/  band; int /*<<< orphan*/  power_level; scalar_t__ rx_counter; int /*<<< orphan*/  channel; int /*<<< orphan*/  tx_watchdog_work; int /*<<< orphan*/  roc_complete_work; int /*<<< orphan*/  scan_complete_work; int /*<<< orphan*/  recovery_work; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  netstack_work; int /*<<< orphan*/  elp_work; int /*<<< orphan*/  deferred_tx_queue; int /*<<< orphan*/  deferred_rx_queue; TYPE_1__* links; struct ieee80211_hw* hw; int /*<<< orphan*/  wlvif_list; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/ * tx_queue; } ;

/* Variables and functions */
 int AP_MAX_STATIONS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 struct ieee80211_hw* FUNC1 (int) ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  IEEE80211_BAND_2GHZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NL80211_CHAN_NO_HT ; 
 int NUM_TX_QUEUES ; 
 int /*<<< orphan*/  WL1271_DEFAULT_CHANNEL ; 
 int /*<<< orphan*/  WL1271_DEFAULT_POWER_LEVEL ; 
 int /*<<< orphan*/  WL1271_PSM_ILLEGAL ; 
 int /*<<< orphan*/  WL12XX_FW_TYPE_NONE ; 
 int WL12XX_MAX_LINKS ; 
 int /*<<< orphan*/  WL12XX_SYSTEM_HLID ; 
 int /*<<< orphan*/  WLCORE_STATE_OFF ; 
 scalar_t__ FUNC5 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long,unsigned int) ; 
 unsigned int FUNC12 (void*) ; 
 scalar_t__ FUNC13 (int) ; 
 struct ieee80211_hw* FUNC14 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (void*) ; 
 void* FUNC19 (int,int) ; 
 void* FUNC20 (size_t,int) ; 
 int /*<<< orphan*/  FUNC21 (struct wl1271*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (struct wl1271*) ; 
 int /*<<< orphan*/  wl1271_elp_work ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 
 int /*<<< orphan*/  wl1271_netstack_work ; 
 int /*<<< orphan*/  wl1271_ops ; 
 int /*<<< orphan*/  wl1271_recovery_work ; 
 int /*<<< orphan*/  wl1271_scan_complete_work ; 
 int /*<<< orphan*/  wl1271_tx_work ; 
 int /*<<< orphan*/  FUNC27 (struct wl1271*) ; 
 int /*<<< orphan*/  wl12xx_tx_watchdog_work ; 
 int /*<<< orphan*/  wlcore_roc_complete_work ; 

struct ieee80211_hw *FUNC28(size_t priv_size, u32 aggr_buf_size,
				     u32 mbox_size)
{
	struct ieee80211_hw *hw;
	struct wl1271 *wl;
	int i, j, ret;
	unsigned int order;

	FUNC0(AP_MAX_STATIONS > WL12XX_MAX_LINKS);

	hw = FUNC14(sizeof(*wl), &wl1271_ops);
	if (!hw) {
		FUNC26("could not alloc ieee80211_hw");
		ret = -ENOMEM;
		goto err_hw_alloc;
	}

	wl = hw->priv;
	FUNC21(wl, 0, sizeof(*wl));

	wl->priv = FUNC20(priv_size, GFP_KERNEL);
	if (!wl->priv) {
		FUNC26("could not alloc wl priv");
		ret = -ENOMEM;
		goto err_priv_alloc;
	}

	FUNC3(&wl->wlvif_list);

	wl->hw = hw;

	for (i = 0; i < NUM_TX_QUEUES; i++)
		for (j = 0; j < WL12XX_MAX_LINKS; j++)
			FUNC23(&wl->links[j].tx_queue[i]);

	FUNC23(&wl->deferred_rx_queue);
	FUNC23(&wl->deferred_tx_queue);

	FUNC2(&wl->elp_work, wl1271_elp_work);
	FUNC4(&wl->netstack_work, wl1271_netstack_work);
	FUNC4(&wl->tx_work, wl1271_tx_work);
	FUNC4(&wl->recovery_work, wl1271_recovery_work);
	FUNC2(&wl->scan_complete_work, wl1271_scan_complete_work);
	FUNC2(&wl->roc_complete_work, wlcore_roc_complete_work);
	FUNC2(&wl->tx_watchdog_work, wl12xx_tx_watchdog_work);

	wl->freezable_wq = FUNC7("wl12xx_wq");
	if (!wl->freezable_wq) {
		ret = -ENOMEM;
		goto err_hw;
	}

	wl->channel = WL1271_DEFAULT_CHANNEL;
	wl->rx_counter = 0;
	wl->power_level = WL1271_DEFAULT_POWER_LEVEL;
	wl->band = IEEE80211_BAND_2GHZ;
	wl->channel_type = NL80211_CHAN_NO_HT;
	wl->flags = 0;
	wl->sg_enabled = true;
	wl->sleep_auth = WL1271_PSM_ILLEGAL;
	wl->recovery_count = 0;
	wl->hw_pg_ver = -1;
	wl->ap_ps_map = 0;
	wl->ap_fw_ps_map = 0;
	wl->quirks = 0;
	wl->platform_quirks = 0;
	wl->system_hlid = WL12XX_SYSTEM_HLID;
	wl->active_sta_count = 0;
	wl->active_link_count = 0;
	wl->fwlog_size = 0;
	FUNC17(&wl->fwlog_waitq);

	/* The system link is always allocated */
	FUNC6(WL12XX_SYSTEM_HLID, wl->links_map);

	FUNC21(wl->tx_frames_map, 0, sizeof(wl->tx_frames_map));
	for (i = 0; i < wl->num_tx_desc; i++)
		wl->tx_frames[i] = NULL;

	FUNC24(&wl->wl_lock);

	wl->state = WLCORE_STATE_OFF;
	wl->fw_type = WL12XX_FW_TYPE_NONE;
	FUNC22(&wl->mutex);
	FUNC22(&wl->flush_mutex);
	FUNC16(&wl->nvs_loading_complete);

	order = FUNC12(aggr_buf_size);
	wl->aggr_buf = (u8 *)FUNC5(GFP_KERNEL, order);
	if (!wl->aggr_buf) {
		ret = -ENOMEM;
		goto err_wq;
	}
	wl->aggr_buf_size = aggr_buf_size;

	wl->dummy_packet = FUNC27(wl);
	if (!wl->dummy_packet) {
		ret = -ENOMEM;
		goto err_aggr;
	}

	/* Allocate one page for the FW log */
	wl->fwlog = (u8 *)FUNC13(GFP_KERNEL);
	if (!wl->fwlog) {
		ret = -ENOMEM;
		goto err_dummy_packet;
	}

	wl->mbox_size = mbox_size;
	wl->mbox = FUNC19(wl->mbox_size, GFP_KERNEL | GFP_DMA);
	if (!wl->mbox) {
		ret = -ENOMEM;
		goto err_fwlog;
	}

	wl->buffer_32 = FUNC19(sizeof(*wl->buffer_32), GFP_KERNEL);
	if (!wl->buffer_32) {
		ret = -ENOMEM;
		goto err_mbox;
	}

	return hw;

err_mbox:
	FUNC18(wl->mbox);

err_fwlog:
	FUNC10((unsigned long)wl->fwlog);

err_dummy_packet:
	FUNC9(wl->dummy_packet);

err_aggr:
	FUNC11((unsigned long)wl->aggr_buf, order);

err_wq:
	FUNC8(wl->freezable_wq);

err_hw:
	FUNC25(wl);
	FUNC18(wl->priv);

err_priv_alloc:
	FUNC15(hw);

err_hw_alloc:

	return FUNC1(ret);
}