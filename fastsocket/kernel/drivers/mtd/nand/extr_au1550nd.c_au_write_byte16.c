
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
typedef int u16 ;
struct nand_chip {int IO_ADDR_W; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int au_sync () ;
 int le16_to_cpu (int ) ;
 int writew (int ,int ) ;

__attribute__((used)) static void au_write_byte16(struct mtd_info *mtd, u_char byte)
{
 struct nand_chip *this = mtd->priv;
 writew(le16_to_cpu((u16) byte), this->IO_ADDR_W);
 au_sync();
}
