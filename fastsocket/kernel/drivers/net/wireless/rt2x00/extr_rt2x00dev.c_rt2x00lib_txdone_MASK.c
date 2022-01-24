#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u8 ;
struct txdone_entry_desc {int retry; int /*<<< orphan*/  flags; } ;
struct skb_frame_desc {unsigned int flags; unsigned int tx_rate_idx; unsigned int tx_rate_flags; } ;
struct TYPE_13__ {int /*<<< orphan*/  dot11RTSFailureCount; int /*<<< orphan*/  dot11RTSSuccessCount; int /*<<< orphan*/  dot11ACKFailureCount; } ;
struct TYPE_10__ {int tx_success; int tx_failed; } ;
struct TYPE_11__ {TYPE_1__ qual; } ;
struct rt2x00_dev {TYPE_6__* ops; int /*<<< orphan*/  hw; int /*<<< orphan*/  cap_flags; TYPE_4__ low_level_stats; TYPE_2__ link; } ;
struct queue_entry {TYPE_7__* queue; scalar_t__ flags; int /*<<< orphan*/ * skb; } ;
struct TYPE_17__ {int ampdu_len; int ampdu_ack_len; TYPE_3__* rates; scalar_t__ ack_signal; } ;
struct ieee80211_tx_info {int flags; TYPE_9__ status; } ;
struct TYPE_16__ {int /*<<< orphan*/  tx_lock; struct rt2x00_dev* rt2x00dev; } ;
struct TYPE_15__ {TYPE_5__* lib; int /*<<< orphan*/  extra_tx_headroom; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* clear_entry ) (struct queue_entry*) ;} ;
struct TYPE_12__ {unsigned int idx; unsigned int flags; unsigned int count; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAPABILITY_HW_CRYPTO ; 
 int /*<<< orphan*/  DUMP_FRAME_TXDONE ; 
 struct ieee80211_tx_info* FUNC0 (int /*<<< orphan*/ *) ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 int IEEE80211_TX_CTL_NO_ACK ; 
 unsigned int IEEE80211_TX_MAX_RATES ; 
 unsigned int IEEE80211_TX_RC_USE_RTS_CTS ; 
 int IEEE80211_TX_STAT_ACK ; 
 int IEEE80211_TX_STAT_AMPDU ; 
 int IEEE80211_TX_STAT_AMPDU_NO_BACK ; 
 int /*<<< orphan*/  Q_INDEX_DONE ; 
 int /*<<< orphan*/  REQUIRE_L2PAD ; 
 int /*<<< orphan*/  REQUIRE_TASKLET_CONTEXT ; 
 unsigned int SKBDESC_DESC_IN_SKB ; 
 unsigned int SKBDESC_NOT_MAC80211 ; 
 int /*<<< orphan*/  TXDONE_AMPDU ; 
 int /*<<< orphan*/  TXDONE_FALLBACK ; 
 int /*<<< orphan*/  TXDONE_SUCCESS ; 
 int /*<<< orphan*/  TXDONE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct skb_frame_desc* FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct queue_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct queue_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC13 (struct queue_entry*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct queue_entry*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC20(struct queue_entry *entry,
		      struct txdone_entry_desc *txdesc)
{
	struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
	struct ieee80211_tx_info *tx_info = FUNC0(entry->skb);
	struct skb_frame_desc *skbdesc = FUNC2(entry->skb);
	unsigned int header_length, i;
	u8 rate_idx, rate_flags, retry_rates;
	u8 skbdesc_flags = skbdesc->flags;
	bool success;

	/*
	 * Unmap the skb.
	 */
	FUNC13(entry);

	/*
	 * Remove the extra tx headroom from the skb.
	 */
	FUNC15(entry->skb, rt2x00dev->ops->extra_tx_headroom);

	/*
	 * Signal that the TX descriptor is no longer in the skb.
	 */
	skbdesc->flags &= ~SKBDESC_DESC_IN_SKB;

	/*
	 * Determine the length of 802.11 header.
	 */
	header_length = FUNC3(entry->skb);

	/*
	 * Remove L2 padding which was added during
	 */
	if (FUNC19(REQUIRE_L2PAD, &rt2x00dev->cap_flags))
		FUNC11(entry->skb, header_length);

	/*
	 * If the IV/EIV data was stripped from the frame before it was
	 * passed to the hardware, we should now reinsert it again because
	 * mac80211 will expect the same data to be present it the
	 * frame as it was passed to us.
	 */
	if (FUNC19(CAPABILITY_HW_CRYPTO, &rt2x00dev->cap_flags))
		FUNC7(entry->skb, header_length);

	/*
	 * Send frame to debugfs immediately, after this call is completed
	 * we are going to overwrite the skb->cb array.
	 */
	FUNC8(rt2x00dev, DUMP_FRAME_TXDONE, entry->skb);

	/*
	 * Determine if the frame has been successfully transmitted and
	 * remove BARs from our check list while checking for their
	 * TX status.
	 */
	success =
	    FUNC9(entry) ||
	    FUNC19(TXDONE_SUCCESS, &txdesc->flags) ||
	    FUNC19(TXDONE_UNKNOWN, &txdesc->flags);

	/*
	 * Update TX statistics.
	 */
	rt2x00dev->link.qual.tx_success += success;
	rt2x00dev->link.qual.tx_failed += !success;

	rate_idx = skbdesc->tx_rate_idx;
	rate_flags = skbdesc->tx_rate_flags;
	retry_rates = FUNC19(TXDONE_FALLBACK, &txdesc->flags) ?
	    (txdesc->retry + 1) : 1;

	/*
	 * Initialize TX status
	 */
	FUNC6(&tx_info->status, 0, sizeof(tx_info->status));
	tx_info->status.ack_signal = 0;

	/*
	 * Frame was send with retries, hardware tried
	 * different rates to send out the frame, at each
	 * retry it lowered the rate 1 step except when the
	 * lowest rate was used.
	 */
	for (i = 0; i < retry_rates && i < IEEE80211_TX_MAX_RATES; i++) {
		tx_info->status.rates[i].idx = rate_idx - i;
		tx_info->status.rates[i].flags = rate_flags;

		if (rate_idx - i == 0) {
			/*
			 * The lowest rate (index 0) was used until the
			 * number of max retries was reached.
			 */
			tx_info->status.rates[i].count = retry_rates - i;
			i++;
			break;
		}
		tx_info->status.rates[i].count = 1;
	}
	if (i < (IEEE80211_TX_MAX_RATES - 1))
		tx_info->status.rates[i].idx = -1; /* terminate */

	if (!(tx_info->flags & IEEE80211_TX_CTL_NO_ACK)) {
		if (success)
			tx_info->flags |= IEEE80211_TX_STAT_ACK;
		else
			rt2x00dev->low_level_stats.dot11ACKFailureCount++;
	}

	/*
	 * Every single frame has it's own tx status, hence report
	 * every frame as ampdu of size 1.
	 *
	 * TODO: if we can find out how many frames were aggregated
	 * by the hw we could provide the real ampdu_len to mac80211
	 * which would allow the rc algorithm to better decide on
	 * which rates are suitable.
	 */
	if (FUNC19(TXDONE_AMPDU, &txdesc->flags) ||
	    tx_info->flags & IEEE80211_TX_CTL_AMPDU) {
		tx_info->flags |= IEEE80211_TX_STAT_AMPDU;
		tx_info->status.ampdu_len = 1;
		tx_info->status.ampdu_ack_len = success ? 1 : 0;

		if (!success)
			tx_info->flags |= IEEE80211_TX_STAT_AMPDU_NO_BACK;
	}

	if (rate_flags & IEEE80211_TX_RC_USE_RTS_CTS) {
		if (success)
			rt2x00dev->low_level_stats.dot11RTSSuccessCount++;
		else
			rt2x00dev->low_level_stats.dot11RTSFailureCount++;
	}

	/*
	 * Only send the status report to mac80211 when it's a frame
	 * that originated in mac80211. If this was a extra frame coming
	 * through a mac80211 library call (RTS/CTS) then we should not
	 * send the status report back.
	 */
	if (!(skbdesc_flags & SKBDESC_NOT_MAC80211)) {
		if (FUNC19(REQUIRE_TASKLET_CONTEXT, &rt2x00dev->cap_flags))
			FUNC4(rt2x00dev->hw, entry->skb);
		else
			FUNC5(rt2x00dev->hw, entry->skb);
	} else
		FUNC1(entry->skb);

	/*
	 * Make this entry available for reuse.
	 */
	entry->skb = NULL;
	entry->flags = 0;

	rt2x00dev->ops->lib->clear_entry(entry);

	FUNC10(entry, Q_INDEX_DONE);

	/*
	 * If the data queue was below the threshold before the txdone
	 * handler we must make sure the packet queue in the mac80211 stack
	 * is reenabled when the txdone handler has finished. This has to be
	 * serialized with rt2x00mac_tx(), otherwise we can wake up queue
	 * before it was stopped.
	 */
	FUNC16(&entry->queue->tx_lock);
	if (!FUNC12(entry->queue))
		FUNC14(entry->queue);
	FUNC17(&entry->queue->tx_lock);
}