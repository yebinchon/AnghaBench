
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct nand_chip {int IO_ADDR_R; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int readl (int ) ;

__attribute__((used)) static void cmx270_read_buf(struct mtd_info *mtd, u_char *buf, int len)
{
 int i;
 struct nand_chip *this = mtd->priv;

 for (i=0; i<len; i++)
  *buf++ = readl(this->IO_ADDR_R) >> 16;
}
