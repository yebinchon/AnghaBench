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
typedef  int /*<<< orphan*/  u16 ;
struct page {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  write_ptr; int /*<<< orphan*/  read_ptr; } ;
struct iwl_txq {int /*<<< orphan*/  lock; int /*<<< orphan*/ * tfds; TYPE_2__* entries; TYPE_5__ q; } ;
struct iwl_trans_pcie {size_t cmd_queue; int /*<<< orphan*/  wait_command_queue; int /*<<< orphan*/  status; int /*<<< orphan*/  rx_page_order; struct iwl_txq* txq; } ;
struct iwl_trans {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  sequence; } ;
struct iwl_rx_packet {TYPE_1__ hdr; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  cmd; } ;
struct iwl_device_cmd {TYPE_4__ hdr; } ;
struct iwl_cmd_meta {int flags; TYPE_3__* source; } ;
struct TYPE_8__ {unsigned long _rx_page_addr; int handler_status; int /*<<< orphan*/  _rx_page_order; struct iwl_rx_packet* resp_pkt; } ;
struct TYPE_7__ {struct iwl_cmd_meta meta; struct iwl_device_cmd* cmd; } ;

/* Variables and functions */
 int CMD_ASYNC ; 
 int CMD_WANT_SKB ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,int /*<<< orphan*/ ) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_HCMD_ACTIVE ; 
 scalar_t__ FUNC5 (int,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_trans*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_trans*,struct iwl_cmd_meta*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_trans*,struct iwl_rx_packet*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct page*) ; 
 struct iwl_rx_packet* FUNC14 (struct iwl_rx_cmd_buffer*) ; 
 struct page* FUNC15 (struct iwl_rx_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

void FUNC20(struct iwl_trans *trans,
			    struct iwl_rx_cmd_buffer *rxb, int handler_status)
{
	struct iwl_rx_packet *pkt = FUNC14(rxb);
	u16 sequence = FUNC12(pkt->hdr.sequence);
	int txq_id = FUNC4(sequence);
	int index = FUNC3(sequence);
	int cmd_index;
	struct iwl_device_cmd *cmd;
	struct iwl_cmd_meta *meta;
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	struct iwl_txq *txq = &trans_pcie->txq[trans_pcie->cmd_queue];

	/* If a Tx command is being handled and it isn't in the actual
	 * command queue then there a command routing bug has been introduced
	 * in the queue management code. */
	if (FUNC5(txq_id != trans_pcie->cmd_queue,
		 "wrong command queue %d (should be %d), sequence 0x%X readp=%d writep=%d\n",
		 txq_id, trans_pcie->cmd_queue, sequence,
		 trans_pcie->txq[trans_pcie->cmd_queue].q.read_ptr,
		 trans_pcie->txq[trans_pcie->cmd_queue].q.write_ptr)) {
		FUNC11(trans, pkt, 32);
		return;
	}

	FUNC16(&txq->lock);

	cmd_index = FUNC7(&txq->q, index);
	cmd = txq->entries[cmd_index].cmd;
	meta = &txq->entries[cmd_index].meta;

	FUNC10(trans, meta, &txq->tfds[index]);

	/* Input error checking is done when commands are added to queue. */
	if (meta->flags & CMD_WANT_SKB) {
		struct page *p = FUNC15(rxb);

		meta->source->resp_pkt = pkt;
		meta->source->_rx_page_addr = (unsigned long)FUNC13(p);
		meta->source->_rx_page_order = trans_pcie->rx_page_order;
		meta->source->handler_status = handler_status;
	}

	FUNC9(trans, txq_id, index);

	if (!(meta->flags & CMD_ASYNC)) {
		if (!FUNC18(STATUS_HCMD_ACTIVE, &trans_pcie->status)) {
			FUNC2(trans,
				 "HCMD_ACTIVE already clear for command %s\n",
				 FUNC8(trans_pcie, cmd->hdr.cmd));
		}
		FUNC6(STATUS_HCMD_ACTIVE, &trans_pcie->status);
		FUNC0(trans, "Clearing HCMD_ACTIVE for command %s\n",
			       FUNC8(trans_pcie, cmd->hdr.cmd));
		FUNC19(&trans_pcie->wait_command_queue);
	}

	meta->flags = 0;

	FUNC17(&txq->lock);
}