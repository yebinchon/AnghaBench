
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct nand_chip {int IO_ADDR_W; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int writel (int,int ) ;

__attribute__((used)) static void cmx270_write_buf(struct mtd_info *mtd, const u_char *buf, int len)
{
 int i;
 struct nand_chip *this = mtd->priv;

 for (i=0; i<len; i++)
  writel((*buf++ << 16), this->IO_ADDR_W);
}
