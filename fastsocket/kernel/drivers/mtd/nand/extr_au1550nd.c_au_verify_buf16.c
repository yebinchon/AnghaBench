
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef scalar_t__ u16 ;
struct nand_chip {int IO_ADDR_R; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int EFAULT ;
 int au_sync () ;
 scalar_t__ readw (int ) ;

__attribute__((used)) static int au_verify_buf16(struct mtd_info *mtd, const u_char *buf, int len)
{
 int i;
 struct nand_chip *this = mtd->priv;
 u16 *p = (u16 *) buf;
 len >>= 1;

 for (i = 0; i < len; i++) {
  if (p[i] != readw(this->IO_ADDR_R))
   return -EFAULT;
  au_sync();
 }
 return 0;
}
