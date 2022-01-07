
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int * layout; int correct; int calculate; int hwctl; int mode; } ;
struct nand_chip {int chip_delay; TYPE_1__ ecc; int verify_buf; int write_buf; int read_buf; int read_byte; int read_word; int cmdfunc; int dev_ready; int select_chip; int waitfunc; int options; } ;
struct pxa3xx_nand_info {struct nand_chip nand_chip; struct pxa3xx_nand_flash* flash_info; } ;
struct pxa3xx_nand_flash {int flash_width; int page_size; } ;
struct mtd_info {int dummy; } ;


 int NAND_BUSWIDTH_16 ;
 int NAND_ECC_HW ;
 int hw_largepage_ecclayout ;
 int hw_smallpage_ecclayout ;
 int pxa3xx_nand_cmdfunc ;
 int pxa3xx_nand_dev_ready ;
 int pxa3xx_nand_ecc_calculate ;
 int pxa3xx_nand_ecc_correct ;
 int pxa3xx_nand_ecc_hwctl ;
 int pxa3xx_nand_read_buf ;
 int pxa3xx_nand_read_byte ;
 int pxa3xx_nand_read_word ;
 int pxa3xx_nand_select_chip ;
 int pxa3xx_nand_verify_buf ;
 int pxa3xx_nand_waitfunc ;
 int pxa3xx_nand_write_buf ;

__attribute__((used)) static void pxa3xx_nand_init_mtd(struct mtd_info *mtd,
     struct pxa3xx_nand_info *info)
{
 const struct pxa3xx_nand_flash *f = info->flash_info;
 struct nand_chip *this = &info->nand_chip;

 this->options = (f->flash_width == 16) ? NAND_BUSWIDTH_16: 0;

 this->waitfunc = pxa3xx_nand_waitfunc;
 this->select_chip = pxa3xx_nand_select_chip;
 this->dev_ready = pxa3xx_nand_dev_ready;
 this->cmdfunc = pxa3xx_nand_cmdfunc;
 this->read_word = pxa3xx_nand_read_word;
 this->read_byte = pxa3xx_nand_read_byte;
 this->read_buf = pxa3xx_nand_read_buf;
 this->write_buf = pxa3xx_nand_write_buf;
 this->verify_buf = pxa3xx_nand_verify_buf;

 this->ecc.mode = NAND_ECC_HW;
 this->ecc.hwctl = pxa3xx_nand_ecc_hwctl;
 this->ecc.calculate = pxa3xx_nand_ecc_calculate;
 this->ecc.correct = pxa3xx_nand_ecc_correct;
 this->ecc.size = f->page_size;

 if (f->page_size == 2048)
  this->ecc.layout = &hw_largepage_ecclayout;
 else
  this->ecc.layout = &hw_smallpage_ecclayout;

 this->chip_delay = 25;
}
