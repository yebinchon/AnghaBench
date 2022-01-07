
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int bytes; int mode; int write_page; int read_page; int * layout; } ;
struct nand_chip {int chipsize; TYPE_1__ ecc; int * badblock_pattern; } ;
struct sh_flctl {int page_size; scalar_t__ hwecc; void* erase_ADRCNT; void* rw_ADRCNT; struct nand_chip chip; } ;
struct mtd_info {int writesize; } ;


 void* ADRCNT2_E ;
 void* ADRCNT_1 ;
 void* ADRCNT_2 ;
 void* ADRCNT_3 ;
 void* ADRCNT_4 ;
 int ECCPOS2 ;
 int ECCPOS_02 ;
 int FLCMNCR (struct sh_flctl*) ;
 int NAND_ECC_HW ;
 int NAND_ECC_SOFT ;
 int _4ECCEN ;
 int flctl_4secc_largepage ;
 int flctl_4secc_oob_16 ;
 int flctl_4secc_oob_64 ;
 int flctl_4secc_smallpage ;
 int flctl_read_page_hwecc ;
 int flctl_write_page_hwecc ;
 struct sh_flctl* mtd_to_flctl (struct mtd_info*) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int flctl_chip_init_tail(struct mtd_info *mtd)
{
 struct sh_flctl *flctl = mtd_to_flctl(mtd);
 struct nand_chip *chip = &flctl->chip;

 if (mtd->writesize == 512) {
  flctl->page_size = 0;
  if (chip->chipsize > (32 << 20)) {

   flctl->rw_ADRCNT = ADRCNT_4;
   flctl->erase_ADRCNT = ADRCNT_3;
  } else if (chip->chipsize > (2 << 16)) {

   flctl->rw_ADRCNT = ADRCNT_3;
   flctl->erase_ADRCNT = ADRCNT_2;
  } else {
   flctl->rw_ADRCNT = ADRCNT_2;
   flctl->erase_ADRCNT = ADRCNT_1;
  }
 } else {
  flctl->page_size = 1;
  if (chip->chipsize > (128 << 20)) {

   flctl->rw_ADRCNT = ADRCNT2_E;
   flctl->erase_ADRCNT = ADRCNT_3;
  } else if (chip->chipsize > (8 << 16)) {

   flctl->rw_ADRCNT = ADRCNT_4;
   flctl->erase_ADRCNT = ADRCNT_2;
  } else {
   flctl->rw_ADRCNT = ADRCNT_3;
   flctl->erase_ADRCNT = ADRCNT_1;
  }
 }

 if (flctl->hwecc) {
  if (mtd->writesize == 512) {
   chip->ecc.layout = &flctl_4secc_oob_16;
   chip->badblock_pattern = &flctl_4secc_smallpage;
  } else {
   chip->ecc.layout = &flctl_4secc_oob_64;
   chip->badblock_pattern = &flctl_4secc_largepage;
  }

  chip->ecc.size = 512;
  chip->ecc.bytes = 10;
  chip->ecc.read_page = flctl_read_page_hwecc;
  chip->ecc.write_page = flctl_write_page_hwecc;
  chip->ecc.mode = NAND_ECC_HW;


  writel(readl(FLCMNCR(flctl)) | _4ECCEN | ECCPOS2 | ECCPOS_02,
    FLCMNCR(flctl));
 } else {
  chip->ecc.mode = NAND_ECC_SOFT;
 }

 return 0;
}
