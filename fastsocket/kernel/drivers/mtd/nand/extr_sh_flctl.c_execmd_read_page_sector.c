
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_flctl {int* hwecc_cant_correct; int * done_buff; scalar_t__ page_size; } ;
struct mtd_info {int writesize; } ;


 int ACM_SACCES_MODE ;
 int FL4ECCCR (struct sh_flctl*) ;
 int FLADR (struct sh_flctl*) ;
 int FLCMDCR (struct sh_flctl*) ;
 int FLCMNCR (struct sh_flctl*) ;
 int NAND_CMD_READ0 ;
 int NAND_CMD_READSTART ;
 int _4ECCCORRECT ;
 int empty_fifo (struct sh_flctl*) ;
 struct sh_flctl* mtd_to_flctl (struct mtd_info*) ;
 int read_ecfiforeg (struct sh_flctl*,int *,int) ;
 int read_fiforeg (struct sh_flctl*,int,int) ;
 int readl (int ) ;
 int set_cmd_regs (struct mtd_info*,int,int) ;
 int start_translation (struct sh_flctl*) ;
 int wait_completion (struct sh_flctl*) ;
 int writel (int,int ) ;

__attribute__((used)) static void execmd_read_page_sector(struct mtd_info *mtd, int page_addr)
{
 struct sh_flctl *flctl = mtd_to_flctl(mtd);
 int sector, page_sectors;

 if (flctl->page_size)
  page_sectors = 4;
 else
  page_sectors = 1;

 writel(readl(FLCMNCR(flctl)) | ACM_SACCES_MODE | _4ECCCORRECT,
   FLCMNCR(flctl));

 set_cmd_regs(mtd, NAND_CMD_READ0,
  (NAND_CMD_READSTART << 8) | NAND_CMD_READ0);

 for (sector = 0; sector < page_sectors; sector++) {
  int ret;

  empty_fifo(flctl);
  writel(readl(FLCMDCR(flctl)) | 1, FLCMDCR(flctl));
  writel(page_addr << 2 | sector, FLADR(flctl));

  start_translation(flctl);
  read_fiforeg(flctl, 512, 512 * sector);

  ret = read_ecfiforeg(flctl,
   &flctl->done_buff[mtd->writesize + 16 * sector],
   sector);

  if (ret)
   flctl->hwecc_cant_correct[sector] = 1;

  writel(0x0, FL4ECCCR(flctl));
  wait_completion(flctl);
 }
 writel(readl(FLCMNCR(flctl)) & ~(ACM_SACCES_MODE | _4ECCCORRECT),
   FLCMNCR(flctl));
}
