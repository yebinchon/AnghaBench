
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int IO_ADDR_R; } ;
struct mtd_info {struct nand_chip* priv; } ;


 unsigned char readb (int ) ;

__attribute__((used)) static unsigned char cs553x_read_byte(struct mtd_info *mtd)
{
 struct nand_chip *this = mtd->priv;
 return readb(this->IO_ADDR_R);
}
