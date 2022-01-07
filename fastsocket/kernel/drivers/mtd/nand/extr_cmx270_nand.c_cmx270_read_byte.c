
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct nand_chip {int IO_ADDR_R; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int readl (int ) ;

__attribute__((used)) static u_char cmx270_read_byte(struct mtd_info *mtd)
{
 struct nand_chip *this = mtd->priv;

 return (readl(this->IO_ADDR_R) >> 16);
}
