
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int const* oob_poi; int (* write_buf ) (struct mtd_info*,int const*,int ) ;} ;
struct mtd_info {int oobsize; int writesize; } ;


 int stub1 (struct mtd_info*,int const*,int ) ;
 int stub2 (struct mtd_info*,int const*,int ) ;

__attribute__((used)) static void nand_write_page_raw(struct mtd_info *mtd, struct nand_chip *chip,
    const uint8_t *buf)
{
 chip->write_buf(mtd, buf, mtd->writesize);
 chip->write_buf(mtd, chip->oob_poi, mtd->oobsize);
}
