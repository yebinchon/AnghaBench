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
typedef  int u16 ;
struct iwl_trans_pcie {int cmd_queue; TYPE_2__* txq; scalar_t__ scd_base_addr; int /*<<< orphan*/  queue_used; } ;
struct iwl_trans {int dummy; } ;
struct TYPE_3__ {int read_ptr; int write_ptr; } ;
struct TYPE_4__ {int active; TYPE_1__ q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  HBUS_TARG_WRPTR ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,char*,int,int,int) ; 
 struct iwl_trans_pcie* FUNC3 (struct iwl_trans*) ; 
 int /*<<< orphan*/  SCD_AGGR_SEL ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  SCD_QUEUECHAIN_SEL ; 
 int SCD_QUEUE_CTX_REG2_FRAME_LIMIT_MSK ; 
 int SCD_QUEUE_CTX_REG2_FRAME_LIMIT_POS ; 
 int SCD_QUEUE_CTX_REG2_WIN_SIZE_MSK ; 
 int SCD_QUEUE_CTX_REG2_WIN_SIZE_POS ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int SCD_QUEUE_STTS_REG_MSK ; 
 int SCD_QUEUE_STTS_REG_POS_ACTIVE ; 
 int SCD_QUEUE_STTS_REG_POS_TXF ; 
 int SCD_QUEUE_STTS_REG_POS_WSL ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_trans*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_trans*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (int,int /*<<< orphan*/ ) ; 

void FUNC16(struct iwl_trans *trans, int txq_id, int fifo,
			       int sta_id, int tid, int frame_limit, u16 ssn)
{
	struct iwl_trans_pcie *trans_pcie = FUNC3(trans);

	if (FUNC15(txq_id, trans_pcie->queue_used))
		FUNC7(1, "queue %d already used - expect issues", txq_id);

	/* Stop this Tx queue before configuring it */
	FUNC9(trans, txq_id);

	/* Set this queue as a chain-building queue unless it is CMD queue */
	if (txq_id != trans_pcie->cmd_queue)
		FUNC11(trans, SCD_QUEUECHAIN_SEL, FUNC0(txq_id));

	/* If this queue is mapped to a certain station: it is an AGG queue */
	if (sta_id >= 0) {
		u16 ra_tid = FUNC1(sta_id, tid);

		/* Map receiver-address / traffic-ID to this queue */
		FUNC10(trans, ra_tid, txq_id);

		/* enable aggregations for the queue */
		FUNC11(trans, SCD_AGGR_SEL, FUNC0(txq_id));
	} else {
		/*
		 * disable aggregations for the queue, this will also make the
		 * ra_tid mapping configuration irrelevant since it is now a
		 * non-AGG queue.
		 */
		FUNC8(trans, SCD_AGGR_SEL, FUNC0(txq_id));
	}

	/* Place first TFD at index corresponding to start sequence number.
	 * Assumes that ssn_idx is valid (!= 0xFFF) */
	trans_pcie->txq[txq_id].q.read_ptr = (ssn & 0xff);
	trans_pcie->txq[txq_id].q.write_ptr = (ssn & 0xff);

	FUNC13(trans, HBUS_TARG_WRPTR,
			   (ssn & 0xff) | (txq_id << 8));
	FUNC14(trans, FUNC5(txq_id), ssn);

	/* Set up Tx window size and frame limit for this queue */
	FUNC12(trans, trans_pcie->scd_base_addr +
			FUNC4(txq_id), 0);
	FUNC12(trans, trans_pcie->scd_base_addr +
			FUNC4(txq_id) + sizeof(u32),
			((frame_limit << SCD_QUEUE_CTX_REG2_WIN_SIZE_POS) &
				SCD_QUEUE_CTX_REG2_WIN_SIZE_MSK) |
			((frame_limit << SCD_QUEUE_CTX_REG2_FRAME_LIMIT_POS) &
				SCD_QUEUE_CTX_REG2_FRAME_LIMIT_MSK));

	/* Set up Status area in SRAM, map to Tx DMA/FIFO, activate the queue */
	FUNC14(trans, FUNC6(txq_id),
		       (1 << SCD_QUEUE_STTS_REG_POS_ACTIVE) |
		       (fifo << SCD_QUEUE_STTS_REG_POS_TXF) |
		       (1 << SCD_QUEUE_STTS_REG_POS_WSL) |
		       SCD_QUEUE_STTS_REG_MSK);
	trans_pcie->txq[txq_id].active = true;
	FUNC2(trans, "Activate queue %d on FIFO %d WrPtr: %d\n",
			    txq_id, fifo, ssn & 0xff);
}