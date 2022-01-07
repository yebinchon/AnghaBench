
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int IO_ADDR_W; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int __raw_writesb (int ,int const*,int) ;

__attribute__((used)) static void atmel_write_buf(struct mtd_info *mtd, const u8 *buf, int len)
{
 struct nand_chip *nand_chip = mtd->priv;

 __raw_writesb(nand_chip->IO_ADDR_W, buf, len);
}
