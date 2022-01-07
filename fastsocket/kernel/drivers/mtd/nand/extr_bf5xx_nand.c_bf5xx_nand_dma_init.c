
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bf5xx_nand_info {int device; int dma_completion; } ;


 int CH_NFC ;
 int SSYNC () ;
 int bf5xx_nand_dma_irq ;
 int bfin_read_DMAC1_PERIMUX () ;
 int bfin_write_DMAC1_PERIMUX (int) ;
 int dev_err (int ,char*) ;
 int disable_dma (int ) ;
 int hardware_ecc ;
 int init_completion (int *) ;
 int request_dma (int ,char*) ;
 int set_dma_callback (int ,int ,struct bf5xx_nand_info*) ;

__attribute__((used)) static int bf5xx_nand_dma_init(struct bf5xx_nand_info *info)
{
 int ret;


 if (!hardware_ecc)
  return 0;

 init_completion(&info->dma_completion);


 ret = request_dma(CH_NFC, "BF5XX NFC driver");
 if (ret < 0) {
  dev_err(info->device, " unable to get DMA channel\n");
  return ret;
 }







 set_dma_callback(CH_NFC, bf5xx_nand_dma_irq, info);


 disable_dma(CH_NFC);
 return 0;
}
