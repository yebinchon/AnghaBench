
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct nand_chip {int IO_ADDR_W; } ;
struct mtd_info {struct nand_chip* priv; } ;


 scalar_t__ IS_ALIGNED (unsigned long,int) ;
 int writesw (int ,int const*,int) ;
 int writew (unsigned short,int ) ;

__attribute__((used)) static void gpio_nand_writebuf16(struct mtd_info *mtd, const u_char *buf,
     int len)
{
 struct nand_chip *this = mtd->priv;

 if (IS_ALIGNED((unsigned long)buf, 2)) {
  writesw(this->IO_ADDR_W, buf, len>>1);
 } else {
  int i;
  unsigned short *ptr = (unsigned short *)buf;

  for (i = 0; i < len; i += 2, ptr++)
   writew(*ptr, this->IO_ADDR_W);
 }
}
