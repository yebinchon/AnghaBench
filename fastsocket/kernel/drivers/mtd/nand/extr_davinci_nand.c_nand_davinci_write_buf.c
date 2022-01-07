
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int IO_ADDR_R; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int iowrite16_rep (int ,int const*,int) ;
 int iowrite32_rep (int ,int const*,int) ;
 int iowrite8_rep (int ,int const*,int) ;

__attribute__((used)) static void nand_davinci_write_buf(struct mtd_info *mtd,
  const uint8_t *buf, int len)
{
 struct nand_chip *chip = mtd->priv;

 if ((0x03 & ((unsigned)buf)) == 0 && (0x03 & len) == 0)
  iowrite32_rep(chip->IO_ADDR_R, buf, len >> 2);
 else if ((0x01 & ((unsigned)buf)) == 0 && (0x01 & len) == 0)
  iowrite16_rep(chip->IO_ADDR_R, buf, len >> 1);
 else
  iowrite8_rep(chip->IO_ADDR_R, buf, len);
}
