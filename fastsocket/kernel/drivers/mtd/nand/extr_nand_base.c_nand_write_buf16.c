
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u16 ;
struct nand_chip {int IO_ADDR_W; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int writew (int ,int ) ;

__attribute__((used)) static void nand_write_buf16(struct mtd_info *mtd, const uint8_t *buf, int len)
{
 int i;
 struct nand_chip *chip = mtd->priv;
 u16 *p = (u16 *) buf;
 len >>= 1;

 for (i = 0; i < len; i++)
  writew(p[i], chip->IO_ADDR_W);

}
