
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nand_chip {int IO_ADDR_R; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int readw (int ) ;

__attribute__((used)) static u16 nand_read_word(struct mtd_info *mtd)
{
 struct nand_chip *chip = mtd->priv;
 return readw(chip->IO_ADDR_R);
}
