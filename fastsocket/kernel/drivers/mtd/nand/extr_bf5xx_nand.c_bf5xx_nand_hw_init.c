
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bf5xx_nand_platform {int page_size; int data_width; unsigned short rd_dly; int wr_dly; } ;
struct bf5xx_nand_info {int device; struct bf5xx_nand_platform* platform; } ;


 int ENXIO ;
 unsigned short NFC_NWIDTH_OFFSET ;
 unsigned short NFC_PG_SIZE_OFFSET ;
 unsigned short NFC_RDDLY_OFFSET ;
 unsigned short NFC_WRDLY_OFFSET ;
 int SSYNC () ;
 scalar_t__ bf5xx_nand_dma_init (struct bf5xx_nand_info*) ;
 unsigned short bfin_read_NFC_IRQSTAT () ;
 int bfin_write_NFC_CTL (unsigned short) ;
 int bfin_write_NFC_IRQMASK (int) ;
 int bfin_write_NFC_IRQSTAT (unsigned short) ;
 int dev_dbg (int ,char*,unsigned short) ;
 int dev_info (int ,char*,int,int,int ,unsigned short) ;

__attribute__((used)) static int bf5xx_nand_hw_init(struct bf5xx_nand_info *info)
{
 int err = 0;
 unsigned short val;
 struct bf5xx_nand_platform *plat = info->platform;


 dev_info(info->device,
  "page_size=%d, data_width=%d, wr_dly=%d, rd_dly=%d\n",
  (plat->page_size ? 512 : 256),
  (plat->data_width ? 16 : 8),
  plat->wr_dly, plat->rd_dly);

 val = (plat->page_size << NFC_PG_SIZE_OFFSET) |
  (plat->data_width << NFC_NWIDTH_OFFSET) |
  (plat->rd_dly << NFC_RDDLY_OFFSET) |
  (plat->rd_dly << NFC_WRDLY_OFFSET);
 dev_dbg(info->device, "NFC_CTL is 0x%04x\n", val);

 bfin_write_NFC_CTL(val);
 SSYNC();


 bfin_write_NFC_IRQMASK(0x0);
 SSYNC();
 val = bfin_read_NFC_IRQSTAT();
 bfin_write_NFC_IRQSTAT(val);
 SSYNC();


 if (bf5xx_nand_dma_init(info))
  err = -ENXIO;

 return err;
}
