#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct iwl_queue {int id; scalar_t__ read_ptr; scalar_t__ write_ptr; int n_bd; } ;
struct iwl_txq {TYPE_3__* scratchbufs; struct iwl_queue q; int /*<<< orphan*/  lock; struct iwl_trans_pcie* trans_pcie; } ;
struct iwl_trans_pcie {int scd_base_addr; int /*<<< orphan*/  wd_timeout; } ;
struct iwl_trans {int /*<<< orphan*/  op_mode; TYPE_2__* cfg; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_6__ {int /*<<< orphan*/  scratch; } ;
struct TYPE_5__ {TYPE_1__* base_params; } ;
struct TYPE_4__ {int num_of_queues; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FH_TCSR_CHNL_NUM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,char*,int,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  SCD_QUEUE_STTS_REG_POS_ACTIVE ; 
 int SCD_QUEUE_STTS_REG_POS_TXF ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_trans*,int*,int) ; 
 int FUNC10 (int,int) ; 
 scalar_t__ FUNC11 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 struct iwl_trans* FUNC13 (struct iwl_trans_pcie*) ; 
 int FUNC14 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct iwl_trans*,int,int*,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC20(unsigned long data)
{
	struct iwl_txq *txq = (void *)data;
	struct iwl_queue *q = &txq->q;
	struct iwl_trans_pcie *trans_pcie = txq->trans_pcie;
	struct iwl_trans *trans = FUNC13(trans_pcie);
	u32 scd_sram_addr = trans_pcie->scd_base_addr +
				FUNC7(txq->q.id);
	u8 buf[16];
	int i;

	FUNC18(&txq->lock);
	/* check if triggered erroneously */
	if (txq->q.read_ptr == txq->q.write_ptr) {
		FUNC19(&txq->lock);
		return;
	}
	FUNC19(&txq->lock);

	FUNC2(trans, "Queue %d stuck for %u ms.\n", txq->q.id,
		FUNC16(trans_pcie->wd_timeout));
	FUNC2(trans, "Current SW read_ptr %d write_ptr %d\n",
		txq->q.read_ptr, txq->q.write_ptr);

	FUNC15(trans, scd_sram_addr, buf, sizeof(buf));

	FUNC9(trans, buf, sizeof(buf));

	for (i = 0; i < FH_TCSR_CHNL_NUM; i++)
		FUNC2(trans, "FH TRBs(%d) = 0x%08x\n", i,
			FUNC11(trans, FUNC1(i)));

	for (i = 0; i < trans->cfg->base_params->num_of_queues; i++) {
		u32 status = FUNC12(trans, FUNC4(i));
		u8 fifo = (status >> SCD_QUEUE_STTS_REG_POS_TXF) & 0x7;
		bool active = !!(status & FUNC0(SCD_QUEUE_STTS_REG_POS_ACTIVE));
		u32 tbl_dw =
			FUNC14(trans,
					     trans_pcie->scd_base_addr +
					     FUNC6(i));

		if (i & 0x1)
			tbl_dw = (tbl_dw & 0xFFFF0000) >> 16;
		else
			tbl_dw = tbl_dw & 0x0000FFFF;

		FUNC2(trans,
			"Q %d is %sactive and mapped to fifo %d ra_tid 0x%04x [%d,%d]\n",
			i, active ? "" : "in", fifo, tbl_dw,
			FUNC12(trans,
				      FUNC3(i)) & (txq->q.n_bd - 1),
			FUNC12(trans, FUNC5(i)));
	}

	for (i = q->read_ptr; i != q->write_ptr;
	     i = FUNC10(i, q->n_bd))
		FUNC2(trans, "scratch %d = 0x%08x\n", i,
			FUNC17(txq->scratchbufs[i].scratch));

	FUNC8(trans->op_mode);
}