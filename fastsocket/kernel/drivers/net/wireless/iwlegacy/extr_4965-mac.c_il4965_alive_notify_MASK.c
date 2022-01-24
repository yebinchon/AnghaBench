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
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int max_txq_num; } ;
struct TYPE_3__ {int dma; } ;
struct il_priv {scalar_t__ scd_base_addr; int /*<<< orphan*/  lock; int /*<<< orphan*/ * txq; scalar_t__ txq_ctx_active_msk; int /*<<< orphan*/ * queue_stop_count; int /*<<< orphan*/ * queue_stopped; TYPE_2__ hw_params; TYPE_1__ scd_bc_tbls; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FH49_TCSR_CHNL_NUM ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FH49_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE ; 
 int FH49_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_ENABLE ; 
 int /*<<< orphan*/  FH49_TX_CHICKEN_BITS_REG ; 
 scalar_t__ FH49_TX_CHICKEN_BITS_SCD_AUTO_RETRY_EN ; 
 int /*<<< orphan*/  HBUS_TARG_WRPTR ; 
 scalar_t__ IL49_SCD_CONTEXT_DATA_OFFSET ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  IL49_SCD_DRAM_BASE_ADDR ; 
 int /*<<< orphan*/  IL49_SCD_INTERRUPT_MASK ; 
 int /*<<< orphan*/  IL49_SCD_QUEUECHAIN_SEL ; 
 int IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_MSK ; 
 int IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_POS ; 
 int IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_MSK ; 
 int IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_POS ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  IL49_SCD_SRAM_BASE_ADDR ; 
 scalar_t__ IL49_SCD_TRANSLATE_TBL_OFFSET ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ IL49_SCD_TX_STTS_BITMAP_OFFSET ; 
 int /*<<< orphan*/  IL_DEFAULT_CMD_QUEUE_NUM ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int IL_TX_FIFO_UNUSED ; 
 int SCD_FRAME_LIMIT ; 
 int SCD_WIN_SIZE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int* default_queue_to_tx_fifo ; 
 int /*<<< orphan*/  FUNC8 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct il_priv*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct il_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct il_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct il_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct il_priv*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct il_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct il_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct il_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC20(struct il_priv *il)
{
	u32 a;
	unsigned long flags;
	int i, chan;
	u32 reg_val;

	FUNC18(&il->lock, flags);

	/* Clear 4965's internal Tx Scheduler data base */
	il->scd_base_addr = FUNC12(il, IL49_SCD_SRAM_BASE_ADDR);
	a = il->scd_base_addr + IL49_SCD_CONTEXT_DATA_OFFSET;
	for (; a < il->scd_base_addr + IL49_SCD_TX_STTS_BITMAP_OFFSET; a += 4)
		FUNC16(il, a, 0);
	for (; a < il->scd_base_addr + IL49_SCD_TRANSLATE_TBL_OFFSET; a += 4)
		FUNC16(il, a, 0);
	for (;
	     a <
	     il->scd_base_addr +
	     FUNC5(il->hw_params.max_txq_num);
	     a += 4)
		FUNC16(il, a, 0);

	/* Tel 4965 where to find Tx byte count tables */
	FUNC15(il, IL49_SCD_DRAM_BASE_ADDR, il->scd_bc_tbls.dma >> 10);

	/* Enable DMA channel */
	for (chan = 0; chan < FH49_TCSR_CHNL_NUM; chan++)
		FUNC14(il, FUNC2(chan),
		      FH49_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE |
		      FH49_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_ENABLE);

	/* Update FH chicken bits */
	reg_val = FUNC11(il, FH49_TX_CHICKEN_BITS_REG);
	FUNC14(il, FH49_TX_CHICKEN_BITS_REG,
	      reg_val | FH49_TX_CHICKEN_BITS_SCD_AUTO_RETRY_EN);

	/* Disable chain mode for all queues */
	FUNC15(il, IL49_SCD_QUEUECHAIN_SEL, 0);

	/* Initialize each Tx queue (including the command queue) */
	for (i = 0; i < il->hw_params.max_txq_num; i++) {

		/* TFD circular buffer read/write idxes */
		FUNC15(il, FUNC4(i), 0);
		FUNC14(il, HBUS_TARG_WRPTR, 0 | (i << 8));

		/* Max Tx Window size for Scheduler-ACK mode */
		FUNC16(il,
				  il->scd_base_addr +
				  FUNC3(i),
				  (SCD_WIN_SIZE <<
				   IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_POS) &
				  IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_MSK);

		/* Frame limit */
		FUNC16(il,
				  il->scd_base_addr +
				  FUNC3(i) +
				  sizeof(u32),
				  (SCD_FRAME_LIMIT <<
				   IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_POS) &
				  IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_MSK);

	}
	FUNC15(il, IL49_SCD_INTERRUPT_MASK,
		   (1 << il->hw_params.max_txq_num) - 1);

	/* Activate all Tx DMA/FIFO channels */
	FUNC10(il, FUNC6(0, 6));

	FUNC8(il, IL_DEFAULT_CMD_QUEUE_NUM, 0);

	/* make sure all queue are not stopped */
	FUNC17(&il->queue_stopped[0], 0, sizeof(il->queue_stopped));
	for (i = 0; i < 4; i++)
		FUNC7(&il->queue_stop_count[i], 0);

	/* reset to 0 to enable all the queue first */
	il->txq_ctx_active_msk = 0;
	/* Map each Tx/cmd queue to its corresponding fifo */
	FUNC1(FUNC0(default_queue_to_tx_fifo) != 7);

	for (i = 0; i < FUNC0(default_queue_to_tx_fifo); i++) {
		int ac = default_queue_to_tx_fifo[i];

		FUNC13(il, i);

		if (ac == IL_TX_FIFO_UNUSED)
			continue;

		FUNC9(il, &il->txq[i], ac, 0);
	}

	FUNC19(&il->lock, flags);

	return 0;
}