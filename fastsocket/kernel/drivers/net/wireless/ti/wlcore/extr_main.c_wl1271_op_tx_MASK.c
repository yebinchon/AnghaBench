#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct wl12xx_vif {scalar_t__* tx_queue_count; int /*<<< orphan*/ * links_map; } ;
struct wl1271 {int /*<<< orphan*/  wl_lock; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  hw; int /*<<< orphan*/  flags; int /*<<< orphan*/ * tx_queue_count; TYPE_2__* links; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_3__ {struct ieee80211_vif* vif; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_tx_control {int /*<<< orphan*/  sta; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/ * tx_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_TX ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 size_t WL1271_FLAG_FW_TX_BUSY ; 
 size_t WL1271_FLAG_TX_PENDING ; 
 scalar_t__ WL1271_TX_QUEUE_HIGH_WATERMARK ; 
 size_t WL12XX_INVALID_LINK_ID ; 
 int /*<<< orphan*/  WLCORE_QUEUE_STOP_REASON_WATERMARK ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (int) ; 
 size_t FUNC10 (struct wl1271*,struct wl12xx_vif*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct wl12xx_vif* FUNC11 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC12 (struct wl1271*,struct wl12xx_vif*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct wl1271*,struct wl12xx_vif*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct wl1271*,struct wl12xx_vif*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct ieee80211_hw *hw,
			 struct ieee80211_tx_control *control,
			 struct sk_buff *skb)
{
	struct wl1271 *wl = hw->priv;
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct ieee80211_vif *vif = info->control.vif;
	struct wl12xx_vif *wlvif = NULL;
	unsigned long flags;
	int q, mapping;
	u8 hlid;

	if (!vif) {
		FUNC8(DEBUG_TX, "DROP skb with no vif");
		FUNC1(hw, skb);
		return;
	}

	wlvif = FUNC11(vif);
	mapping = FUNC3(skb);
	q = FUNC9(mapping);

	hlid = FUNC10(wl, wlvif, skb, control->sta);

	FUNC5(&wl->wl_lock, flags);

	/*
	 * drop the packet if the link is invalid or the queue is stopped
	 * for any reason but watermark. Watermark is a "soft"-stop so we
	 * allow these packets through.
	 */
	if (hlid == WL12XX_INVALID_LINK_ID ||
	    (!FUNC7(hlid, wlvif->links_map)) ||
	     (FUNC13(wl, wlvif, q) &&
	      !FUNC12(wl, wlvif, q,
			WLCORE_QUEUE_STOP_REASON_WATERMARK))) {
		FUNC8(DEBUG_TX, "DROP skb hlid %d q %d", hlid, q);
		FUNC1(hw, skb);
		goto out;
	}

	FUNC8(DEBUG_TX, "queue skb hlid %d q %d len %d",
		     hlid, q, skb->len);
	FUNC4(&wl->links[hlid].tx_queue[q], skb);

	wl->tx_queue_count[q]++;
	wlvif->tx_queue_count[q]++;

	/*
	 * The workqueue is slow to process the tx_queue and we need stop
	 * the queue here, otherwise the queue will get too long.
	 */
	if (wlvif->tx_queue_count[q] >= WL1271_TX_QUEUE_HIGH_WATERMARK &&
	    !FUNC12(wl, wlvif, q,
					WLCORE_QUEUE_STOP_REASON_WATERMARK)) {
		FUNC8(DEBUG_TX, "op_tx: stopping queues for q %d", q);
		FUNC14(wl, wlvif, q,
					 WLCORE_QUEUE_STOP_REASON_WATERMARK);
	}

	/*
	 * The chip specific setup must run before the first TX packet -
	 * before that, the tx_work will not be initialized!
	 */

	if (!FUNC7(WL1271_FLAG_FW_TX_BUSY, &wl->flags) &&
	    !FUNC7(WL1271_FLAG_TX_PENDING, &wl->flags))
		FUNC2(wl->hw, &wl->tx_work);

out:
	FUNC6(&wl->wl_lock, flags);
}