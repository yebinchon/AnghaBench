
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct nand_chip {int IO_ADDR_R; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int memcpy_fromio (int *,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void cs553x_read_buf(struct mtd_info *mtd, u_char *buf, int len)
{
 struct nand_chip *this = mtd->priv;

 while (unlikely(len > 0x800)) {
  memcpy_fromio(buf, this->IO_ADDR_R, 0x800);
  buf += 0x800;
  len -= 0x800;
 }
 memcpy_fromio(buf, this->IO_ADDR_R, len);
}
