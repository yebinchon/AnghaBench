
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_dma_ld_hw {int count; } ;
struct fsl_dma_chan {int dummy; } ;


 int CPU_TO_DMA (struct fsl_dma_chan*,int ,int) ;

__attribute__((used)) static void set_desc_cnt(struct fsl_dma_chan *fsl_chan,
    struct fsl_dma_ld_hw *hw, u32 count)
{
 hw->count = CPU_TO_DMA(fsl_chan, count, 32);
}
