
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int IO_ADDR_W; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int writeb (int const,int ) ;

__attribute__((used)) static void nand_write_buf(struct mtd_info *mtd, const uint8_t *buf, int len)
{
 int i;
 struct nand_chip *chip = mtd->priv;

 for (i = 0; i < len; i++)
  writeb(buf[i], chip->IO_ADDR_W);
}
