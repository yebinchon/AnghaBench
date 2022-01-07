
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nand_chip {int IO_ADDR_R; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int au_sync () ;
 int readw (int ) ;

__attribute__((used)) static u16 au_read_word(struct mtd_info *mtd)
{
 struct nand_chip *this = mtd->priv;
 u16 ret = readw(this->IO_ADDR_R);
 au_sync();
 return ret;
}
