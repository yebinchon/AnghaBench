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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct iwl_txq {TYPE_2__* entries; int /*<<< orphan*/  q; } ;
struct iwl_rxq {int /*<<< orphan*/  lock; int /*<<< orphan*/  rx_used; int /*<<< orphan*/  free_count; int /*<<< orphan*/  rx_free; } ;
struct iwl_trans_pcie {size_t cmd_queue; int rx_page_order; int n_no_reclaim_cmds; int /*<<< orphan*/ * no_reclaim_cmds; struct iwl_txq* txq; struct iwl_rxq rxq; } ;
struct iwl_trans {int /*<<< orphan*/  dev; int /*<<< orphan*/  op_mode; } ;
struct TYPE_3__ {int sequence; int /*<<< orphan*/  cmd; } ;
struct iwl_rx_packet {scalar_t__ len_n_flags; TYPE_1__ hdr; } ;
struct iwl_rx_mem_buffer {int /*<<< orphan*/  list; int /*<<< orphan*/ * page; int /*<<< orphan*/  page_dma; } ;
struct iwl_rx_cmd_buffer {int _offset; int _rx_page_order; int _page_stolen; int truesize; int /*<<< orphan*/ * _page; } ;
struct iwl_device_cmd {int dummy; } ;
struct iwl_cmd_header {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * free_buf; struct iwl_device_cmd* cmd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FH_RSCSR_FRAME_ALIGN ; 
 int /*<<< orphan*/  FH_RSCSR_FRAME_INVALID ; 
 int FH_RSCSR_FRAME_SIZE_MSK ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iwl_trans_pcie* FUNC2 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,char*) ; 
 int PAGE_SIZE ; 
 int SEQ_RX_FRAME ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_trans_pcie*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct iwl_rx_cmd_buffer*,struct iwl_device_cmd*) ; 
 int /*<<< orphan*/  FUNC14 (struct iwl_trans*,struct iwl_rx_cmd_buffer*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct iwl_rx_packet* FUNC19 (struct iwl_rx_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,struct iwl_trans*,struct iwl_rx_packet*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,struct iwl_trans*,struct iwl_rx_packet*,int) ; 

__attribute__((used)) static void FUNC24(struct iwl_trans *trans,
				struct iwl_rx_mem_buffer *rxb)
{
	struct iwl_trans_pcie *trans_pcie = FUNC2(trans);
	struct iwl_rxq *rxq = &trans_pcie->rxq;
	struct iwl_txq *txq = &trans_pcie->txq[trans_pcie->cmd_queue];
	unsigned long flags;
	bool page_stolen = false;
	int max_len = PAGE_SIZE << trans_pcie->rx_page_order;
	u32 offset = 0;

	if (FUNC5(!rxb))
		return;

	FUNC10(trans->dev, rxb->page_dma, max_len, DMA_FROM_DEVICE);

	while (offset + sizeof(u32) + sizeof(struct iwl_cmd_header) < max_len) {
		struct iwl_rx_packet *pkt;
		struct iwl_device_cmd *cmd;
		u16 sequence;
		bool reclaim;
		int index, cmd_index, err, len;
		struct iwl_rx_cmd_buffer rxcb = {
			._offset = offset,
			._rx_page_order = trans_pcie->rx_page_order,
			._page = rxb->page,
			._page_stolen = false,
			.truesize = max_len,
		};

		pkt = FUNC19(&rxcb);

		if (pkt->len_n_flags == FUNC7(FH_RSCSR_FRAME_INVALID))
			break;

		FUNC1(trans, "cmd at offset %d: %s (0x%.2x)\n",
			rxcb._offset, FUNC12(trans_pcie, pkt->hdr.cmd),
			pkt->hdr.cmd);

		len = FUNC17(pkt->len_n_flags) & FH_RSCSR_FRAME_SIZE_MSK;
		len += sizeof(u32); /* account for status word */
		FUNC22(trans->dev, trans, pkt, len);
		FUNC23(trans->dev, trans, pkt, len);

		/* Reclaim a command buffer only if this packet is a response
		 *   to a (driver-originated) command.
		 * If the packet (e.g. Rx frame) originated from uCode,
		 *   there is no command buffer to reclaim.
		 * Ucode should set SEQ_RX_FRAME bit if ucode-originated,
		 *   but apparently a few don't get set; catch them here. */
		reclaim = !(pkt->hdr.sequence & SEQ_RX_FRAME);
		if (reclaim) {
			int i;

			for (i = 0; i < trans_pcie->n_no_reclaim_cmds; i++) {
				if (trans_pcie->no_reclaim_cmds[i] ==
							pkt->hdr.cmd) {
					reclaim = false;
					break;
				}
			}
		}

		sequence = FUNC16(pkt->hdr.sequence);
		index = FUNC4(sequence);
		cmd_index = FUNC11(&txq->q, index);

		if (reclaim)
			cmd = txq->entries[cmd_index].cmd;
		else
			cmd = NULL;

		err = FUNC13(trans->op_mode, &rxcb, cmd);

		if (reclaim) {
			FUNC15(txq->entries[cmd_index].free_buf);
			txq->entries[cmd_index].free_buf = NULL;
		}

		/*
		 * After here, we should always check rxcb._page_stolen,
		 * if it is true then one of the handlers took the page.
		 */

		if (reclaim) {
			/* Invoke any callbacks, transfer the buffer to caller,
			 * and fire off the (possibly) blocking
			 * iwl_trans_send_cmd()
			 * as we reclaim the driver command queue */
			if (!rxcb._page_stolen)
				FUNC14(trans, &rxcb, err);
			else
				FUNC3(trans, "Claim null rxb?\n");
		}

		page_stolen |= rxcb._page_stolen;
		offset += FUNC0(len, FH_RSCSR_FRAME_ALIGN);
	}

	/* page was stolen from us -- free our reference */
	if (page_stolen) {
		FUNC6(rxb->page, trans_pcie->rx_page_order);
		rxb->page = NULL;
	}

	/* Reuse the page if possible. For notification packets and
	 * SKBs that fail to Rx correctly, add them back into the
	 * rx_free list for reuse later. */
	FUNC20(&rxq->lock, flags);
	if (rxb->page != NULL) {
		rxb->page_dma =
			FUNC8(trans->dev, rxb->page, 0,
				     PAGE_SIZE << trans_pcie->rx_page_order,
				     DMA_FROM_DEVICE);
		if (FUNC9(trans->dev, rxb->page_dma)) {
			/*
			 * free the page(s) as well to not break
			 * the invariant that the items on the used
			 * list have no page(s)
			 */
			FUNC6(rxb->page, trans_pcie->rx_page_order);
			rxb->page = NULL;
			FUNC18(&rxb->list, &rxq->rx_used);
		} else {
			FUNC18(&rxb->list, &rxq->rx_free);
			rxq->free_count++;
		}
	} else
		FUNC18(&rxb->list, &rxq->rx_used);
	FUNC21(&rxq->lock, flags);
}