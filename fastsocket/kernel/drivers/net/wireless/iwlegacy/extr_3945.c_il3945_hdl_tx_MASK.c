#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_10__ {int n_bd; size_t read_ptr; int /*<<< orphan*/  write_ptr; } ;
struct il_tx_queue {TYPE_5__ q; int /*<<< orphan*/ * skbs; int /*<<< orphan*/  time_stamp; } ;
struct TYPE_7__ {int /*<<< orphan*/ * raw; } ;
struct TYPE_6__ {int /*<<< orphan*/  sequence; } ;
struct il_rx_pkt {TYPE_2__ u; TYPE_1__ hdr; } ;
struct il_rx_buf {int dummy; } ;
struct il_priv {struct il_tx_queue* txq; } ;
struct il3945_tx_resp {int failure_frame; int /*<<< orphan*/  rate; int /*<<< orphan*/  status; } ;
struct TYPE_9__ {TYPE_3__* rates; } ;
struct ieee80211_tx_info {scalar_t__ band; int /*<<< orphan*/  flags; TYPE_4__ status; } ;
struct TYPE_8__ {int idx; int count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ IEEE80211_BAND_5GHZ ; 
 struct ieee80211_tx_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_TX_STAT_ACK ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ IL_FIRST_OFDM_RATE ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int TX_ABORT_REQUIRED_MSK ; 
 int TX_STATUS_MSK ; 
 int TX_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct il_priv*,int,int) ; 
 scalar_t__ FUNC10 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 struct il_rx_pkt* FUNC13 (struct il_rx_buf*) ; 

__attribute__((used)) static void
FUNC14(struct il_priv *il, struct il_rx_buf *rxb)
{
	struct il_rx_pkt *pkt = FUNC13(rxb);
	u16 sequence = FUNC11(pkt->hdr.sequence);
	int txq_id = FUNC5(sequence);
	int idx = FUNC4(sequence);
	struct il_tx_queue *txq = &il->txq[txq_id];
	struct ieee80211_tx_info *info;
	struct il3945_tx_resp *tx_resp = (void *)&pkt->u.raw[0];
	u32 status = FUNC12(tx_resp->status);
	int rate_idx;
	int fail;

	if (idx >= txq->q.n_bd || FUNC10(&txq->q, idx) == 0) {
		FUNC3("Read idx for DMA queue txq_id (%d) idx %d "
		       "is out of range [0-%d] %d %d\n", txq_id, idx,
		       txq->q.n_bd, txq->q.write_ptr, txq->q.read_ptr);
		return;
	}

	txq->time_stamp = jiffies;
	info = FUNC2(txq->skbs[txq->q.read_ptr]);
	FUNC6(info);

	/* Fill the MRR chain with some info about on-chip retransmissions */
	rate_idx = FUNC8(tx_resp->rate);
	if (info->band == IEEE80211_BAND_5GHZ)
		rate_idx -= IL_FIRST_OFDM_RATE;

	fail = tx_resp->failure_frame;

	info->status.rates[0].idx = rate_idx;
	info->status.rates[0].count = fail + 1;	/* add final attempt */

	/* tx_status->rts_retry_count = tx_resp->failure_rts; */
	info->flags |=
	    ((status & TX_STATUS_MSK) ==
	     TX_STATUS_SUCCESS) ? IEEE80211_TX_STAT_ACK : 0;

	FUNC0("Tx queue %d Status %s (0x%08x) plcp rate %d retries %d\n", txq_id,
	     FUNC7(status), status, tx_resp->rate,
	     tx_resp->failure_frame);

	FUNC1("Tx queue reclaim %d\n", idx);
	FUNC9(il, txq_id, idx);

	if (status & TX_ABORT_REQUIRED_MSK)
		FUNC3("TODO:  Implement Tx ABORT REQUIRED!!!\n");
}