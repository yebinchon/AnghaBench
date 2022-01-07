
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int IO_ADDR_R; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int __raw_readsw (int ,int *,int) ;

__attribute__((used)) static void atmel_read_buf16(struct mtd_info *mtd, u8 *buf, int len)
{
 struct nand_chip *nand_chip = mtd->priv;

 __raw_readsw(nand_chip->IO_ADDR_R, buf, len / 2);
}
