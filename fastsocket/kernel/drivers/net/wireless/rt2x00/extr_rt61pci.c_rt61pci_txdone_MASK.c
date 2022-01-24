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
typedef  int /*<<< orphan*/  u32 ;
struct txdone_entry_desc {int retry; scalar_t__ flags; } ;
struct rt2x00_dev {TYPE_2__* ops; } ;
struct queue_entry_priv_mmio {int /*<<< orphan*/  desc; } ;
struct queue_entry {int /*<<< orphan*/  entry_idx; struct queue_entry_priv_mmio* priv_data; } ;
struct data_queue {int limit; struct queue_entry* entries; } ;
struct TYPE_4__ {TYPE_1__* tx; } ;
struct TYPE_3__ {int entry_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  Q_INDEX_DONE ; 
 int /*<<< orphan*/  STA_CSR4 ; 
 int /*<<< orphan*/  STA_CSR4_PID_SUBTYPE ; 
 int /*<<< orphan*/  STA_CSR4_PID_TYPE ; 
 int /*<<< orphan*/  STA_CSR4_RETRY_COUNT ; 
 int /*<<< orphan*/  STA_CSR4_TX_RESULT ; 
 int /*<<< orphan*/  STA_CSR4_VALID ; 
 int /*<<< orphan*/  TXDONE_EXCESSIVE_RETRY ; 
 int /*<<< orphan*/  TXDONE_FAILURE ; 
 int /*<<< orphan*/  TXDONE_FALLBACK ; 
 int /*<<< orphan*/  TXDONE_SUCCESS ; 
 int /*<<< orphan*/  TXDONE_UNKNOWN ; 
 int /*<<< orphan*/  TXD_W0_OWNER_NIC ; 
 int /*<<< orphan*/  TXD_W0_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct queue_entry*,struct txdone_entry_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct queue_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct queue_entry* FUNC7 (struct data_queue*,int /*<<< orphan*/ ) ; 
 struct data_queue* FUNC8 (struct rt2x00_dev*,int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct rt2x00_dev *rt2x00dev)
{
	struct data_queue *queue;
	struct queue_entry *entry;
	struct queue_entry *entry_done;
	struct queue_entry_priv_mmio *entry_priv;
	struct txdone_entry_desc txdesc;
	u32 word;
	u32 reg;
	int type;
	int index;
	int i;

	/*
	 * TX_STA_FIFO is a stack of X entries, hence read TX_STA_FIFO
	 * at most X times and also stop processing once the TX_STA_FIFO_VALID
	 * flag is not set anymore.
	 *
	 * The legacy drivers use X=TX_RING_SIZE but state in a comment
	 * that the TX_STA_FIFO stack has a size of 16. We stick to our
	 * tx ring size for now.
	 */
	for (i = 0; i < rt2x00dev->ops->tx->entry_num; i++) {
		FUNC6(rt2x00dev, STA_CSR4, &reg);
		if (!FUNC2(reg, STA_CSR4_VALID))
			break;

		/*
		 * Skip this entry when it contains an invalid
		 * queue identication number.
		 */
		type = FUNC2(reg, STA_CSR4_PID_TYPE);
		queue = FUNC8(rt2x00dev, type);
		if (FUNC9(!queue))
			continue;

		/*
		 * Skip this entry when it contains an invalid
		 * index number.
		 */
		index = FUNC2(reg, STA_CSR4_PID_SUBTYPE);
		if (FUNC9(index >= queue->limit))
			continue;

		entry = &queue->entries[index];
		entry_priv = entry->priv_data;
		FUNC1(entry_priv->desc, 0, &word);

		if (FUNC2(word, TXD_W0_OWNER_NIC) ||
		    !FUNC2(word, TXD_W0_VALID))
			return;

		entry_done = FUNC7(queue, Q_INDEX_DONE);
		while (entry != entry_done) {
			/* Catch up.
			 * Just report any entries we missed as failed.
			 */
			FUNC3(rt2x00dev, "TX status report missed for entry %d\n",
				    entry_done->entry_idx);

			FUNC5(entry_done, TXDONE_UNKNOWN);
			entry_done = FUNC7(queue, Q_INDEX_DONE);
		}

		/*
		 * Obtain the status about this packet.
		 */
		txdesc.flags = 0;
		switch (FUNC2(reg, STA_CSR4_TX_RESULT)) {
		case 0: /* Success, maybe with retry */
			FUNC0(TXDONE_SUCCESS, &txdesc.flags);
			break;
		case 6: /* Failure, excessive retries */
			FUNC0(TXDONE_EXCESSIVE_RETRY, &txdesc.flags);
			/* Don't break, this is a failed frame! */
		default: /* Failure */
			FUNC0(TXDONE_FAILURE, &txdesc.flags);
		}
		txdesc.retry = FUNC2(reg, STA_CSR4_RETRY_COUNT);

		/*
		 * the frame was retried at least once
		 * -> hw used fallback rates
		 */
		if (txdesc.retry)
			FUNC0(TXDONE_FALLBACK, &txdesc.flags);

		FUNC4(entry, &txdesc);
	}
}