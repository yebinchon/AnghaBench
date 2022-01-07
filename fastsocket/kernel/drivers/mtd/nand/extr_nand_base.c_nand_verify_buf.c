
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct nand_chip {int IO_ADDR_R; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int EFAULT ;
 scalar_t__ const readb (int ) ;

__attribute__((used)) static int nand_verify_buf(struct mtd_info *mtd, const uint8_t *buf, int len)
{
 int i;
 struct nand_chip *chip = mtd->priv;

 for (i = 0; i < len; i++)
  if (buf[i] != readb(chip->IO_ADDR_R))
   return -EFAULT;
 return 0;
}
