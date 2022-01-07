
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int IO_ADDR_R; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int readb (int ) ;

__attribute__((used)) static uint8_t nand_read_byte(struct mtd_info *mtd)
{
 struct nand_chip *chip = mtd->priv;
 return readb(chip->IO_ADDR_R);
}
