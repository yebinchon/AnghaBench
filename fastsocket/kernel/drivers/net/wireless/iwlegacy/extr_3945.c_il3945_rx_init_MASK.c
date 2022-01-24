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
struct il_rx_queue {int bd_dma; int rb_stts_dma; } ;
struct il_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FH39_RCSR_RX_CONFIG_REG_BIT_WR_STTS_EN ; 
 int FH39_RCSR_RX_CONFIG_REG_POS_IRQ_RBTH ; 
 int FH39_RCSR_RX_CONFIG_REG_POS_RBDC_SIZE ; 
 int FH39_RCSR_RX_CONFIG_REG_VAL_DMA_CHNL_EN_ENABLE ; 
 int FH39_RCSR_RX_CONFIG_REG_VAL_IRQ_DEST_INT_HOST ; 
 int FH39_RCSR_RX_CONFIG_REG_VAL_MAX_FRAG_SIZE_128 ; 
 int FH39_RCSR_RX_CONFIG_REG_VAL_MSG_MODE_FH ; 
 int FH39_RCSR_RX_CONFIG_REG_VAL_RDRBD_EN_ENABLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FH39_RSSR_CTRL ; 
 int RX_QUEUE_SIZE_LOG ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct il_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct il_priv *il, struct il_rx_queue *rxq)
{
	FUNC5(il, FUNC1(0), rxq->bd_dma);
	FUNC5(il, FUNC2(0), rxq->rb_stts_dma);
	FUNC5(il, FUNC3(0), 0);
	FUNC5(il, FUNC0(0),
	      FH39_RCSR_RX_CONFIG_REG_VAL_DMA_CHNL_EN_ENABLE |
	      FH39_RCSR_RX_CONFIG_REG_VAL_RDRBD_EN_ENABLE |
	      FH39_RCSR_RX_CONFIG_REG_BIT_WR_STTS_EN |
	      FH39_RCSR_RX_CONFIG_REG_VAL_MAX_FRAG_SIZE_128 | (RX_QUEUE_SIZE_LOG
							       <<
							       FH39_RCSR_RX_CONFIG_REG_POS_RBDC_SIZE)
	      | FH39_RCSR_RX_CONFIG_REG_VAL_IRQ_DEST_INT_HOST | (1 <<
								 FH39_RCSR_RX_CONFIG_REG_POS_IRQ_RBTH)
	      | FH39_RCSR_RX_CONFIG_REG_VAL_MSG_MODE_FH);

	/* fake read to flush all prev I/O */
	FUNC4(il, FH39_RSSR_CTRL);

	return 0;
}