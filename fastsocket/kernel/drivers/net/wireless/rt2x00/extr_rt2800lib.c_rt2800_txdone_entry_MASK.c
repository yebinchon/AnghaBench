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
typedef  int /*<<< orphan*/  u32 ;
typedef  void* u16 ;
struct txdone_entry_desc {int retry; scalar_t__ flags; } ;
struct skb_frame_desc {void* tx_rate_idx; } ;
struct rt2x00_dev {int long_retry; } ;
struct queue_entry {int /*<<< orphan*/  skb; TYPE_1__* queue; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {struct rt2x00_dev* rt2x00dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TXDONE_AMPDU ; 
 int /*<<< orphan*/  TXDONE_FAILURE ; 
 int /*<<< orphan*/  TXDONE_FALLBACK ; 
 int /*<<< orphan*/  TXDONE_SUCCESS ; 
 int /*<<< orphan*/  TXWI_W0_AMPDU ; 
 int /*<<< orphan*/  TXWI_W0_MCS ; 
 int /*<<< orphan*/  TX_STA_FIFO_MCS ; 
 int /*<<< orphan*/  TX_STA_FIFO_TX_AGGRE ; 
 int /*<<< orphan*/  TX_STA_FIFO_TX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 struct skb_frame_desc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct queue_entry*,struct txdone_entry_desc*) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(struct queue_entry *entry, u32 status, __le32 *txwi)
{
	struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
	struct skb_frame_desc *skbdesc = FUNC1(entry->skb);
	struct txdone_entry_desc txdesc;
	u32 word;
	u16 mcs, real_mcs;
	int aggr, ampdu;

	/*
	 * Obtain the status about this packet.
	 */
	txdesc.flags = 0;
	FUNC2(txwi, 0, &word);

	mcs = FUNC3(word, TXWI_W0_MCS);
	ampdu = FUNC3(word, TXWI_W0_AMPDU);

	real_mcs = FUNC3(status, TX_STA_FIFO_MCS);
	aggr = FUNC3(status, TX_STA_FIFO_TX_AGGRE);

	/*
	 * If a frame was meant to be sent as a single non-aggregated MPDU
	 * but ended up in an aggregate the used tx rate doesn't correlate
	 * with the one specified in the TXWI as the whole aggregate is sent
	 * with the same rate.
	 *
	 * For example: two frames are sent to rt2x00, the first one sets
	 * AMPDU=1 and requests MCS7 whereas the second frame sets AMDPU=0
	 * and requests MCS15. If the hw aggregates both frames into one
	 * AMDPU the tx status for both frames will contain MCS7 although
	 * the frame was sent successfully.
	 *
	 * Hence, replace the requested rate with the real tx rate to not
	 * confuse the rate control algortihm by providing clearly wrong
	 * data.
	 */
	if (FUNC5(aggr == 1 && ampdu == 0 && real_mcs != mcs)) {
		skbdesc->tx_rate_idx = real_mcs;
		mcs = real_mcs;
	}

	if (aggr == 1 || ampdu == 1)
		FUNC0(TXDONE_AMPDU, &txdesc.flags);

	/*
	 * Ralink has a retry mechanism using a global fallback
	 * table. We setup this fallback table to try the immediate
	 * lower rate for all rates. In the TX_STA_FIFO, the MCS field
	 * always contains the MCS used for the last transmission, be
	 * it successful or not.
	 */
	if (FUNC3(status, TX_STA_FIFO_TX_SUCCESS)) {
		/*
		 * Transmission succeeded. The number of retries is
		 * mcs - real_mcs
		 */
		FUNC0(TXDONE_SUCCESS, &txdesc.flags);
		txdesc.retry = ((mcs > real_mcs) ? mcs - real_mcs : 0);
	} else {
		/*
		 * Transmission failed. The number of retries is
		 * always 7 in this case (for a total number of 8
		 * frames sent).
		 */
		FUNC0(TXDONE_FAILURE, &txdesc.flags);
		txdesc.retry = rt2x00dev->long_retry;
	}

	/*
	 * the frame was retried at least once
	 * -> hw used fallback rates
	 */
	if (txdesc.retry)
		FUNC0(TXDONE_FALLBACK, &txdesc.flags);

	FUNC4(entry, &txdesc);
}