
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bf5xx_nand_info {int dma_completion; } ;
typedef int irqreturn_t ;


 int CH_NFC ;
 int IRQ_HANDLED ;
 int clear_dma_irqstat (int ) ;
 int complete (int *) ;
 int disable_dma (int ) ;

__attribute__((used)) static irqreturn_t bf5xx_nand_dma_irq(int irq, void *dev_id)
{
 struct bf5xx_nand_info *info = dev_id;

 clear_dma_irqstat(CH_NFC);
 disable_dma(CH_NFC);
 complete(&info->dma_completion);

 return IRQ_HANDLED;
}
