
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int MAX_FLAGS ;
 int PAS_DMA_TXF_SFLG0 ;
 int PAS_DMA_TXF_SFLG1 ;
 int pasemi_write_dma_reg (int ,int) ;

void pasemi_dma_set_flag(int flag)
{
 BUG_ON(flag >= MAX_FLAGS);
 if (flag < 32)
  pasemi_write_dma_reg(PAS_DMA_TXF_SFLG0, 1 << flag);
 else
  pasemi_write_dma_reg(PAS_DMA_TXF_SFLG1, 1 << flag);
}
