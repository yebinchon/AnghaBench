
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int IO_ADDR_R; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int ioread16_rep (int ,int *,int) ;
 int ioread32_rep (int ,int *,int) ;
 int ioread8_rep (int ,int *,int) ;

__attribute__((used)) static void nand_davinci_read_buf(struct mtd_info *mtd, uint8_t *buf, int len)
{
 struct nand_chip *chip = mtd->priv;

 if ((0x03 & ((unsigned)buf)) == 0 && (0x03 & len) == 0)
  ioread32_rep(chip->IO_ADDR_R, buf, len >> 2);
 else if ((0x01 & ((unsigned)buf)) == 0 && (0x01 & len) == 0)
  ioread16_rep(chip->IO_ADDR_R, buf, len >> 1);
 else
  ioread8_rep(chip->IO_ADDR_R, buf, len);
}
