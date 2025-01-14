
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int max_txq_num; } ;
struct TYPE_3__ {int dma; } ;
struct il_priv {scalar_t__ scd_base_addr; int lock; int * txq; scalar_t__ txq_ctx_active_msk; int * queue_stop_count; int * queue_stopped; TYPE_2__ hw_params; TYPE_1__ scd_bc_tbls; } ;


 int ARRAY_SIZE (int*) ;
 int BUILD_BUG_ON (int) ;
 int FH49_TCSR_CHNL_NUM ;
 int FH49_TCSR_CHNL_TX_CONFIG_REG (int) ;
 int FH49_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE ;
 int FH49_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_ENABLE ;
 int FH49_TX_CHICKEN_BITS_REG ;
 scalar_t__ FH49_TX_CHICKEN_BITS_SCD_AUTO_RETRY_EN ;
 int HBUS_TARG_WRPTR ;
 scalar_t__ IL49_SCD_CONTEXT_DATA_OFFSET ;
 scalar_t__ IL49_SCD_CONTEXT_QUEUE_OFFSET (int) ;
 int IL49_SCD_DRAM_BASE_ADDR ;
 int IL49_SCD_INTERRUPT_MASK ;
 int IL49_SCD_QUEUECHAIN_SEL ;
 int IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_MSK ;
 int IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_POS ;
 int IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_MSK ;
 int IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_POS ;
 int IL49_SCD_QUEUE_RDPTR (int) ;
 int IL49_SCD_SRAM_BASE_ADDR ;
 scalar_t__ IL49_SCD_TRANSLATE_TBL_OFFSET ;
 scalar_t__ IL49_SCD_TRANSLATE_TBL_OFFSET_QUEUE (int) ;
 scalar_t__ IL49_SCD_TX_STTS_BITMAP_OFFSET ;
 int IL_DEFAULT_CMD_QUEUE_NUM ;
 int IL_MASK (int ,int) ;
 int IL_TX_FIFO_UNUSED ;
 int SCD_FRAME_LIMIT ;
 int SCD_WIN_SIZE ;
 int atomic_set (int *,int ) ;
 int* default_queue_to_tx_fifo ;
 int il4965_set_wr_ptrs (struct il_priv*,int ,int ) ;
 int il4965_tx_queue_set_status (struct il_priv*,int *,int,int ) ;
 int il4965_txq_set_sched (struct il_priv*,int ) ;
 scalar_t__ il_rd (struct il_priv*,int ) ;
 scalar_t__ il_rd_prph (struct il_priv*,int ) ;
 int il_txq_ctx_activate (struct il_priv*,int) ;
 int il_wr (struct il_priv*,int ,int) ;
 int il_wr_prph (struct il_priv*,int ,int) ;
 int il_write_targ_mem (struct il_priv*,scalar_t__,int) ;
 int memset (int *,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
il4965_alive_notify(struct il_priv *il)
{
 u32 a;
 unsigned long flags;
 int i, chan;
 u32 reg_val;

 spin_lock_irqsave(&il->lock, flags);


 il->scd_base_addr = il_rd_prph(il, IL49_SCD_SRAM_BASE_ADDR);
 a = il->scd_base_addr + IL49_SCD_CONTEXT_DATA_OFFSET;
 for (; a < il->scd_base_addr + IL49_SCD_TX_STTS_BITMAP_OFFSET; a += 4)
  il_write_targ_mem(il, a, 0);
 for (; a < il->scd_base_addr + IL49_SCD_TRANSLATE_TBL_OFFSET; a += 4)
  il_write_targ_mem(il, a, 0);
 for (;
      a <
      il->scd_base_addr +
      IL49_SCD_TRANSLATE_TBL_OFFSET_QUEUE(il->hw_params.max_txq_num);
      a += 4)
  il_write_targ_mem(il, a, 0);


 il_wr_prph(il, IL49_SCD_DRAM_BASE_ADDR, il->scd_bc_tbls.dma >> 10);


 for (chan = 0; chan < FH49_TCSR_CHNL_NUM; chan++)
  il_wr(il, FH49_TCSR_CHNL_TX_CONFIG_REG(chan),
        FH49_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE |
        FH49_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_ENABLE);


 reg_val = il_rd(il, FH49_TX_CHICKEN_BITS_REG);
 il_wr(il, FH49_TX_CHICKEN_BITS_REG,
       reg_val | FH49_TX_CHICKEN_BITS_SCD_AUTO_RETRY_EN);


 il_wr_prph(il, IL49_SCD_QUEUECHAIN_SEL, 0);


 for (i = 0; i < il->hw_params.max_txq_num; i++) {


  il_wr_prph(il, IL49_SCD_QUEUE_RDPTR(i), 0);
  il_wr(il, HBUS_TARG_WRPTR, 0 | (i << 8));


  il_write_targ_mem(il,
      il->scd_base_addr +
      IL49_SCD_CONTEXT_QUEUE_OFFSET(i),
      (SCD_WIN_SIZE <<
       IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_POS) &
      IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_MSK);


  il_write_targ_mem(il,
      il->scd_base_addr +
      IL49_SCD_CONTEXT_QUEUE_OFFSET(i) +
      sizeof(u32),
      (SCD_FRAME_LIMIT <<
       IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_POS) &
      IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_MSK);

 }
 il_wr_prph(il, IL49_SCD_INTERRUPT_MASK,
     (1 << il->hw_params.max_txq_num) - 1);


 il4965_txq_set_sched(il, IL_MASK(0, 6));

 il4965_set_wr_ptrs(il, IL_DEFAULT_CMD_QUEUE_NUM, 0);


 memset(&il->queue_stopped[0], 0, sizeof(il->queue_stopped));
 for (i = 0; i < 4; i++)
  atomic_set(&il->queue_stop_count[i], 0);


 il->txq_ctx_active_msk = 0;

 BUILD_BUG_ON(ARRAY_SIZE(default_queue_to_tx_fifo) != 7);

 for (i = 0; i < ARRAY_SIZE(default_queue_to_tx_fifo); i++) {
  int ac = default_queue_to_tx_fifo[i];

  il_txq_ctx_activate(il, i);

  if (ac == IL_TX_FIFO_UNUSED)
   continue;

  il4965_tx_queue_set_status(il, &il->txq[i], ac, 0);
 }

 spin_unlock_irqrestore(&il->lock, flags);

 return 0;
}
