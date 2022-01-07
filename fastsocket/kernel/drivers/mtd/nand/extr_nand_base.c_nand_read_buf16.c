
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u16 ;
struct nand_chip {int IO_ADDR_R; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int readw (int ) ;

__attribute__((used)) static void nand_read_buf16(struct mtd_info *mtd, uint8_t *buf, int len)
{
 int i;
 struct nand_chip *chip = mtd->priv;
 u16 *p = (u16 *) buf;
 len >>= 1;

 for (i = 0; i < len; i++)
  p[i] = readw(chip->IO_ADDR_R);
}
