
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int en; int data; int in_eop; int ignore_sync; int td3; int td2; int td1; int ipend; } ;
typedef TYPE_1__ reg_strcop_rw_cfg ;
typedef TYPE_1__ reg_dma_rw_intr_mask ;
typedef TYPE_1__ reg_dma_rw_cfg ;
typedef TYPE_1__ reg_dma_rw_ack_intr ;


 int DMA_IRQ ;
 int DMA_PANIC_ON_ERROR ;
 int DMA_WR_CMD (int ,int ) ;
 int IN_DMA ;
 int IN_DMA_INST ;
 int OUT_DMA ;
 int OUT_DMA_INST ;
 int REG_WR (int ,int ,int ,TYPE_1__) ;
 int crisv32_request_dma (int ,char*,int ,int ,int ) ;
 int dma ;
 int dma_done_interrupt ;
 int dma_strp ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int panic (char*) ;
 int regi_strcop ;
 int regk_dma_set_w_size4 ;
 int regk_dma_yes ;
 int regk_strcop_d ;
 int regk_strcop_e ;
 int regk_strcop_little ;
 scalar_t__ request_irq (int ,int ,int ,char*,int *) ;
 int rw_ack_intr ;
 int rw_cfg ;
 int rw_intr_mask ;
 int strcop ;

__attribute__((used)) static int init_cryptocop(void)
{
 unsigned long flags;
 reg_dma_rw_cfg dma_cfg = {.en = 1};
 reg_dma_rw_intr_mask intr_mask_in = {.data = regk_dma_yes};
 reg_dma_rw_ack_intr ack_intr = {.data = 1,.in_eop = 1 };
 reg_strcop_rw_cfg strcop_cfg = {
  .ipend = regk_strcop_little,
  .td1 = regk_strcop_e,
  .td2 = regk_strcop_d,
  .td3 = regk_strcop_e,
  .ignore_sync = 0,
  .en = 1
 };

 if (request_irq(DMA_IRQ, dma_done_interrupt, 0,
   "stream co-processor DMA", ((void*)0)))
  panic("request_irq stream co-processor irq dma9");

 (void)crisv32_request_dma(OUT_DMA, "strcop", DMA_PANIC_ON_ERROR,
  0, dma_strp);
 (void)crisv32_request_dma(IN_DMA, "strcop", DMA_PANIC_ON_ERROR,
  0, dma_strp);

 local_irq_save(flags);


 strcop_cfg.en = 0;
 REG_WR(strcop, regi_strcop, rw_cfg, strcop_cfg);
 strcop_cfg.en = 1;
 REG_WR(strcop, regi_strcop, rw_cfg, strcop_cfg);


 REG_WR(dma, IN_DMA_INST, rw_cfg, dma_cfg);
 REG_WR(dma, OUT_DMA_INST, rw_cfg, dma_cfg);


 DMA_WR_CMD(OUT_DMA_INST, regk_dma_set_w_size4);
 DMA_WR_CMD(IN_DMA_INST, regk_dma_set_w_size4);


 REG_WR(dma, IN_DMA_INST, rw_intr_mask, intr_mask_in);


 REG_WR(dma, IN_DMA_INST, rw_ack_intr, ack_intr);

 local_irq_restore(flags);

 return 0;
}
