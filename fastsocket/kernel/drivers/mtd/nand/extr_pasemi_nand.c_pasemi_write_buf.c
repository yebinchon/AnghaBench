
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct nand_chip {int IO_ADDR_R; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int memcpy_toio (int ,int const*,int) ;

__attribute__((used)) static void pasemi_write_buf(struct mtd_info *mtd, const u_char *buf, int len)
{
 struct nand_chip *chip = mtd->priv;

 while (len > 0x800) {
  memcpy_toio(chip->IO_ADDR_R, buf, 0x800);
  buf += 0x800;
  len -= 0x800;
 }
 memcpy_toio(chip->IO_ADDR_R, buf, len);
}
