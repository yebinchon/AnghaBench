#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct rt2x00_dev {TYPE_2__* ops; int /*<<< orphan*/  cap_flags; int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {TYPE_3__* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_4__ control; } ;
struct ieee80211_tx_control {int dummy; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;
struct data_queue {int /*<<< orphan*/  tx_lock; } ;
typedef  enum data_queue_qid { ____Placeholder_data_queue_qid } data_queue_qid ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {TYPE_1__* hw; } ;
struct TYPE_5__ {int /*<<< orphan*/  set_rts_threshold; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_STATE_PRESENT ; 
 int /*<<< orphan*/  DRV_PROJECT ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_SEND_AFTER_DTIM ; 
 int IEEE80211_TX_RC_USE_CTS_PROTECT ; 
 int IEEE80211_TX_RC_USE_RTS_CTS ; 
 int QID_ATIM ; 
 int /*<<< orphan*/  REQUIRE_ATIM_QUEUE ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct rt2x00_dev*,struct data_queue*,struct sk_buff*) ; 
 int FUNC4 (struct data_queue*) ; 
 struct data_queue* FUNC5 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct data_queue*) ; 
 scalar_t__ FUNC7 (struct data_queue*) ; 
 int FUNC8 (struct data_queue*,struct sk_buff*,int) ; 
 int FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 

void FUNC14(struct ieee80211_hw *hw,
		  struct ieee80211_tx_control *control,
		  struct sk_buff *skb)
{
	struct rt2x00_dev *rt2x00dev = hw->priv;
	struct ieee80211_tx_info *tx_info = FUNC0(skb);
	enum data_queue_qid qid = FUNC9(skb);
	struct data_queue *queue = NULL;

	/*
	 * Mac80211 might be calling this function while we are trying
	 * to remove the device or perhaps suspending it.
	 * Note that we can only stop the TX queues inside the TX path
	 * due to possible race conditions in mac80211.
	 */
	if (!FUNC12(DEVICE_STATE_PRESENT, &rt2x00dev->flags))
		goto exit_free_skb;

	/*
	 * Use the ATIM queue if appropriate and present.
	 */
	if (tx_info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM &&
	    FUNC12(REQUIRE_ATIM_QUEUE, &rt2x00dev->cap_flags))
		qid = QID_ATIM;

	queue = FUNC5(rt2x00dev, qid);
	if (FUNC13(!queue)) {
		FUNC2(rt2x00dev,
			   "Attempt to send packet over invalid queue %d\n"
			   "Please file bug report to %s\n", qid, DRV_PROJECT);
		goto exit_free_skb;
	}

	/*
	 * If CTS/RTS is required. create and queue that frame first.
	 * Make sure we have at least enough entries available to send
	 * this CTS/RTS frame as well as the data frame.
	 * Note that when the driver has set the set_rts_threshold()
	 * callback function it doesn't need software generation of
	 * either RTS or CTS-to-self frame and handles everything
	 * inside the hardware.
	 */
	if (!rt2x00dev->ops->hw->set_rts_threshold &&
	    (tx_info->control.rates[0].flags & (IEEE80211_TX_RC_USE_RTS_CTS |
						IEEE80211_TX_RC_USE_CTS_PROTECT))) {
		if (FUNC4(queue) <= 1)
			goto exit_fail;

		if (FUNC3(rt2x00dev, queue, skb))
			goto exit_fail;
	}

	if (FUNC13(FUNC8(queue, skb, false)))
		goto exit_fail;

	/*
	 * Pausing queue has to be serialized with rt2x00lib_txdone(). Note
	 * we should not use spin_lock_bh variant as bottom halve was already
	 * disabled before ieee80211_xmit() call.
	 */
	FUNC10(&queue->tx_lock);
	if (FUNC7(queue))
		FUNC6(queue);
	FUNC11(&queue->tx_lock);

	return;

 exit_fail:
	FUNC10(&queue->tx_lock);
	FUNC6(queue);
	FUNC11(&queue->tx_lock);
 exit_free_skb:
	FUNC1(hw, skb);
}