
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct nand_chip {int IO_ADDR_W; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int au_sync () ;
 int writeb (int ,int ) ;

__attribute__((used)) static void au_write_byte(struct mtd_info *mtd, u_char byte)
{
 struct nand_chip *this = mtd->priv;
 writeb(byte, this->IO_ADDR_W);
 au_sync();
}
