
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct nand_chip {int IO_ADDR_R; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int au_sync () ;
 int readb (int ) ;

__attribute__((used)) static u_char au_read_byte(struct mtd_info *mtd)
{
 struct nand_chip *this = mtd->priv;
 u_char ret = readb(this->IO_ADDR_R);
 au_sync();
 return ret;
}
