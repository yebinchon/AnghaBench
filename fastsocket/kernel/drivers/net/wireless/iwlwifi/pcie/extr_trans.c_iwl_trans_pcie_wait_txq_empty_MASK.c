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
typedef  int u8 ;
typedef  int u32 ;
struct iwl_queue {scalar_t__ read_ptr; scalar_t__ write_ptr; int n_bd; int /*<<< orphan*/  id; } ;
struct iwl_txq {struct iwl_queue q; } ;
struct iwl_trans_pcie {int cmd_queue; int scd_base_addr; struct iwl_txq* txq; } ;
struct iwl_trans {TYPE_2__* cfg; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {int num_of_queues; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int FH_TCSR_CHNL_NUM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,char*,int,...) ; 
 int /*<<< orphan*/  IWL_FLUSH_WAIT_MS ; 
 struct iwl_trans_pcie* FUNC3 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  SCD_QUEUE_STTS_REG_POS_ACTIVE ; 
 int SCD_QUEUE_STTS_REG_POS_TXF ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_trans*,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct iwl_trans*,int,int*,int) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC17(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC3(trans);
	struct iwl_txq *txq;
	struct iwl_queue *q;
	int cnt;
	unsigned long now = jiffies;
	u32 scd_sram_addr;
	u8 buf[16];
	int ret = 0;

	/* waiting for all the tx frames complete might take a while */
	for (cnt = 0; cnt < trans->cfg->base_params->num_of_queues; cnt++) {
		if (cnt == trans_pcie->cmd_queue)
			continue;
		txq = &trans_pcie->txq[cnt];
		q = &txq->q;
		while (q->read_ptr != q->write_ptr && !FUNC16(jiffies,
		       now + FUNC14(IWL_FLUSH_WAIT_MS)))
			FUNC15(1);

		if (q->read_ptr != q->write_ptr) {
			FUNC2(trans,
				"fail to flush all tx fifo queues Q %d\n", cnt);
			ret = -ETIMEDOUT;
			break;
		}
	}

	if (!ret)
		return 0;

	FUNC2(trans, "Current SW read_ptr %d write_ptr %d\n",
		txq->q.read_ptr, txq->q.write_ptr);

	scd_sram_addr = trans_pcie->scd_base_addr +
			FUNC8(txq->q.id);
	FUNC13(trans, scd_sram_addr, buf, sizeof(buf));

	FUNC9(trans, buf, sizeof(buf));

	for (cnt = 0; cnt < FH_TCSR_CHNL_NUM; cnt++)
		FUNC2(trans, "FH TRBs(%d) = 0x%08x\n", cnt,
			FUNC10(trans, FUNC1(cnt)));

	for (cnt = 0; cnt < trans->cfg->base_params->num_of_queues; cnt++) {
		u32 status = FUNC11(trans, FUNC5(cnt));
		u8 fifo = (status >> SCD_QUEUE_STTS_REG_POS_TXF) & 0x7;
		bool active = !!(status & FUNC0(SCD_QUEUE_STTS_REG_POS_ACTIVE));
		u32 tbl_dw =
			FUNC12(trans, trans_pcie->scd_base_addr +
					     FUNC7(cnt));

		if (cnt & 0x1)
			tbl_dw = (tbl_dw & 0xFFFF0000) >> 16;
		else
			tbl_dw = tbl_dw & 0x0000FFFF;

		FUNC2(trans,
			"Q %d is %sactive and mapped to fifo %d ra_tid 0x%04x [%d,%d]\n",
			cnt, active ? "" : "in", fifo, tbl_dw,
			FUNC11(trans,
				      FUNC4(cnt)) & (txq->q.n_bd - 1),
			FUNC11(trans, FUNC6(cnt)));
	}

	return ret;
}