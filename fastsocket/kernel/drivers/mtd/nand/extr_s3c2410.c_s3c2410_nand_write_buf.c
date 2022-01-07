
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct nand_chip {int IO_ADDR_W; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int writesb (int ,int const*,int) ;

__attribute__((used)) static void s3c2410_nand_write_buf(struct mtd_info *mtd, const u_char *buf, int len)
{
 struct nand_chip *this = mtd->priv;
 writesb(this->IO_ADDR_W, buf, len);
}
