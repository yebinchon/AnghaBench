
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_dma_device {int feature; scalar_t__* chan; int reg_base; } ;
typedef int irqreturn_t ;


 int FSL_DMA_BIG_ENDIAN ;
 int IRQ_NONE ;
 int ffs (int ) ;
 int fsl_dma_chan_do_interrupt (int,scalar_t__) ;
 int in_be32 (int ) ;
 int in_le32 (int ) ;

__attribute__((used)) static irqreturn_t fsl_dma_do_interrupt(int irq, void *data)
{
 struct fsl_dma_device *fdev = (struct fsl_dma_device *)data;
 u32 gsr;
 int ch_nr;

 gsr = (fdev->feature & FSL_DMA_BIG_ENDIAN) ? in_be32(fdev->reg_base)
   : in_le32(fdev->reg_base);
 ch_nr = (32 - ffs(gsr)) / 8;

 return fdev->chan[ch_nr] ? fsl_dma_chan_do_interrupt(irq,
   fdev->chan[ch_nr]) : IRQ_NONE;
}
