
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct nand_chip {int * oob_poi; } ;
struct TYPE_2__ {int failed; } ;
struct mtd_info {TYPE_1__ ecc_stats; int oobsize; int writesize; } ;


 int NAND_STATUS_FAIL ;
 int fsl_elbc_read_buf (struct mtd_info*,int *,int ) ;
 int fsl_elbc_wait (struct mtd_info*,struct nand_chip*) ;

__attribute__((used)) static int fsl_elbc_read_page(struct mtd_info *mtd,
                              struct nand_chip *chip,
         uint8_t *buf,
         int page)
{
 fsl_elbc_read_buf(mtd, buf, mtd->writesize);
 fsl_elbc_read_buf(mtd, chip->oob_poi, mtd->oobsize);

 if (fsl_elbc_wait(mtd, chip) & NAND_STATUS_FAIL)
  mtd->ecc_stats.failed++;

 return 0;
}
