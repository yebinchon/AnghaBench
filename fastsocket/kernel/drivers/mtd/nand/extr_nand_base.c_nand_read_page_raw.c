
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int * oob_poi; int (* read_buf ) (struct mtd_info*,int *,int ) ;} ;
struct mtd_info {int oobsize; int writesize; } ;


 int stub1 (struct mtd_info*,int *,int ) ;
 int stub2 (struct mtd_info*,int *,int ) ;

__attribute__((used)) static int nand_read_page_raw(struct mtd_info *mtd, struct nand_chip *chip,
         uint8_t *buf, int page)
{
 chip->read_buf(mtd, buf, mtd->writesize);
 chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
 return 0;
}
