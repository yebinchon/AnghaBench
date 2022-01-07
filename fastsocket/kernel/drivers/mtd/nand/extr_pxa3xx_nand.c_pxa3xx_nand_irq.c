
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa3xx_nand_info {int cmd_complete; int state; int retcode; scalar_t__ use_dma; } ;
typedef int irqreturn_t ;


 int ERR_BBERR ;
 int ERR_DBERR ;
 int ERR_SBERR ;
 int IRQ_HANDLED ;
 int NDSR ;
 unsigned int NDSR_CS0_BBD ;
 unsigned int NDSR_CS0_CMDD ;
 unsigned int NDSR_DBERR ;
 unsigned int NDSR_RDDREQ ;
 unsigned int NDSR_SBERR ;
 unsigned int NDSR_WRDREQ ;
 int STATE_DMA_READING ;
 int STATE_DMA_WRITING ;
 int STATE_PIO_READING ;
 int STATE_PIO_WRITING ;
 int STATE_READY ;
 int complete (int *) ;
 int disable_int (struct pxa3xx_nand_info*,unsigned int) ;
 unsigned int nand_readl (struct pxa3xx_nand_info*,int ) ;
 int nand_writel (struct pxa3xx_nand_info*,int ,unsigned int) ;
 int start_data_dma (struct pxa3xx_nand_info*,int) ;

__attribute__((used)) static irqreturn_t pxa3xx_nand_irq(int irq, void *devid)
{
 struct pxa3xx_nand_info *info = devid;
 unsigned int status;

 status = nand_readl(info, NDSR);

 if (status & (NDSR_RDDREQ | NDSR_DBERR | NDSR_SBERR)) {
  if (status & NDSR_DBERR)
   info->retcode = ERR_DBERR;
  else if (status & NDSR_SBERR)
   info->retcode = ERR_SBERR;

  disable_int(info, NDSR_RDDREQ | NDSR_DBERR | NDSR_SBERR);

  if (info->use_dma) {
   info->state = STATE_DMA_READING;
   start_data_dma(info, 0);
  } else {
   info->state = STATE_PIO_READING;
   complete(&info->cmd_complete);
  }
 } else if (status & NDSR_WRDREQ) {
  disable_int(info, NDSR_WRDREQ);
  if (info->use_dma) {
   info->state = STATE_DMA_WRITING;
   start_data_dma(info, 1);
  } else {
   info->state = STATE_PIO_WRITING;
   complete(&info->cmd_complete);
  }
 } else if (status & (NDSR_CS0_BBD | NDSR_CS0_CMDD)) {
  if (status & NDSR_CS0_BBD)
   info->retcode = ERR_BBERR;

  disable_int(info, NDSR_CS0_BBD | NDSR_CS0_CMDD);
  info->state = STATE_READY;
  complete(&info->cmd_complete);
 }
 nand_writel(info, NDSR, status);
 return IRQ_HANDLED;
}
