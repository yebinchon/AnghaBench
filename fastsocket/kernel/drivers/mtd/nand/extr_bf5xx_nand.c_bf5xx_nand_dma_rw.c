
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mtd_info {int dummy; } ;
struct bf5xx_nand_platform {short page_size; } ;
struct bf5xx_nand_info {int dma_completion; int device; struct bf5xx_nand_platform* platform; } ;


 int CH_NFC ;
 unsigned short DI_EN ;
 int SSYNC () ;
 unsigned short WDSIZE_16 ;
 unsigned short WDSIZE_32 ;
 unsigned short WNR ;
 int bfin_write_NFC_PGCTL (int) ;
 int bfin_write_NFC_RST (int) ;
 int clear_dma_irqstat (int ) ;
 int dev_dbg (int ,char*,struct mtd_info*,int *,int) ;
 int disable_dma (int ) ;
 int enable_dma (int ) ;
 int flush_dcache_range (unsigned int,unsigned int) ;
 int invalidate_dcache_range (unsigned int,unsigned int) ;
 struct bf5xx_nand_info* mtd_to_nand_info (struct mtd_info*) ;
 int set_dma_config (int ,unsigned short) ;
 int set_dma_start_addr (int ,unsigned long) ;
 int set_dma_x_count (int ,unsigned short) ;
 int set_dma_x_modify (int ,int) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void bf5xx_nand_dma_rw(struct mtd_info *mtd,
    uint8_t *buf, int is_read)
{
 struct bf5xx_nand_info *info = mtd_to_nand_info(mtd);
 struct bf5xx_nand_platform *plat = info->platform;
 unsigned short page_size = (plat->page_size ? 512 : 256);
 unsigned short val;

 dev_dbg(info->device, " mtd->%p, buf->%p, is_read %d\n",
   mtd, buf, is_read);







 if (is_read)
  invalidate_dcache_range((unsigned int)buf,
    (unsigned int)(buf + page_size));
 else
  flush_dcache_range((unsigned int)buf,
    (unsigned int)(buf + page_size));






 bfin_write_NFC_RST(0x1);
 SSYNC();

 disable_dma(CH_NFC);
 clear_dma_irqstat(CH_NFC);


 set_dma_config(CH_NFC, 0x0);
 set_dma_start_addr(CH_NFC, (unsigned long) buf);
 if (is_read)
  val |= WNR;
 set_dma_config(CH_NFC, val);
 enable_dma(CH_NFC);


 if (is_read)
  bfin_write_NFC_PGCTL(0x1);
 else
  bfin_write_NFC_PGCTL(0x2);
 wait_for_completion(&info->dma_completion);
}
