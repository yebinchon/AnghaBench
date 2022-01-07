
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; int in_eop; int member_0; int en; } ;
typedef TYPE_1__ reg_dma_rw_intr_mask ;
typedef TYPE_1__ reg_dma_rw_cfg ;
typedef TYPE_1__ reg_dma_rw_ack_intr ;


 int DMA_IRQ ;
 int IN_DMA ;
 int IN_DMA_INST ;
 int OUT_DMA ;
 int OUT_DMA_INST ;
 int REG_WR (int ,int ,int ,TYPE_1__) ;
 int crisv32_free_dma (int ) ;
 int dma ;
 int free_irq (int ,int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int rw_ack_intr ;
 int rw_cfg ;
 int rw_intr_mask ;

__attribute__((used)) static void release_cryptocop(void)
{
 unsigned long flags;
 reg_dma_rw_cfg dma_cfg = {.en = 0};
 reg_dma_rw_intr_mask intr_mask_in = {0};
 reg_dma_rw_ack_intr ack_intr = {.data = 1,.in_eop = 1 };

 local_irq_save(flags);


 REG_WR(dma, IN_DMA_INST, rw_ack_intr, ack_intr);


 REG_WR(dma, IN_DMA_INST, rw_cfg, dma_cfg);
 REG_WR(dma, OUT_DMA_INST, rw_cfg, dma_cfg);


 REG_WR(dma, IN_DMA_INST, rw_intr_mask, intr_mask_in);

 local_irq_restore(flags);

 free_irq(DMA_IRQ, ((void*)0));

 (void)crisv32_free_dma(OUT_DMA);
 (void)crisv32_free_dma(IN_DMA);
}
