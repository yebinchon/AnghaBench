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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int /*<<< orphan*/  txstatus_fifo; } ;
struct data_queue {int dummy; } ;

/* Variables and functions */
 scalar_t__ QID_RX ; 
 int /*<<< orphan*/  Q_INDEX ; 
 int /*<<< orphan*/  Q_INDEX_DONE ; 
 int /*<<< orphan*/  TX_STA_FIFO_PID_QUEUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rt2800pci_txdone_find_entry ; 
 int /*<<< orphan*/  rt2800pci_txdone_match_first ; 
 int /*<<< orphan*/  rt2800pci_txdone_release_entries ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,char*,scalar_t__) ; 
 int FUNC3 (struct data_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct data_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct data_queue* FUNC5 (struct rt2x00_dev*,scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static bool FUNC7(struct rt2x00_dev *rt2x00dev)
{
	struct data_queue *queue;
	u32 status;
	u8 qid;
	int max_tx_done = 16;

	while (FUNC0(&rt2x00dev->txstatus_fifo, &status)) {
		qid = FUNC1(status, TX_STA_FIFO_PID_QUEUE);
		if (FUNC6(qid >= QID_RX)) {
			/*
			 * Unknown queue, this shouldn't happen. Just drop
			 * this tx status.
			 */
			FUNC2(rt2x00dev, "Got TX status report with unexpected pid %u, dropping\n",
				    qid);
			break;
		}

		queue = FUNC5(rt2x00dev, qid);
		if (FUNC6(queue == NULL)) {
			/*
			 * The queue is NULL, this shouldn't happen. Stop
			 * processing here and drop the tx status
			 */
			FUNC2(rt2x00dev, "Got TX status for an unavailable queue %u, dropping\n",
				    qid);
			break;
		}

		if (FUNC6(FUNC3(queue))) {
			/*
			 * The queue is empty. Stop processing here
			 * and drop the tx status.
			 */
			FUNC2(rt2x00dev, "Got TX status for an empty queue %u, dropping\n",
				    qid);
			break;
		}

		/*
		 * Let's associate this tx status with the first
		 * matching frame.
		 */
		if (!FUNC4(queue, Q_INDEX_DONE,
						Q_INDEX, &status,
						rt2800pci_txdone_find_entry)) {
			/*
			 * We cannot match the tx status to any frame, so just
			 * use the first one.
			 */
			if (!FUNC4(queue, Q_INDEX_DONE,
							Q_INDEX, &status,
							rt2800pci_txdone_match_first)) {
				FUNC2(rt2x00dev, "No frame found for TX status on queue %u, dropping\n",
					    qid);
				break;
			}
		}

		/*
		 * Release all frames with a valid tx status.
		 */
		FUNC4(queue, Q_INDEX_DONE,
					   Q_INDEX, NULL,
					   rt2800pci_txdone_release_entries);

		if (--max_tx_done == 0)
			break;
	}

	return !max_tx_done;
}