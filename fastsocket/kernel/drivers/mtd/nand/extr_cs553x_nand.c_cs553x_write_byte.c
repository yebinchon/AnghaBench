
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct nand_chip {scalar_t__ IO_ADDR_W; scalar_t__ IO_ADDR_R; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int CS_NAND_CTLR_BUSY ;
 scalar_t__ MM_NAND_STS ;
 int readb (scalar_t__) ;
 int udelay (int) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void cs553x_write_byte(struct mtd_info *mtd, u_char byte)
{
 struct nand_chip *this = mtd->priv;
 int i = 100000;

 while (i && readb(this->IO_ADDR_R + MM_NAND_STS) & CS_NAND_CTLR_BUSY) {
  udelay(1);
  i--;
 }
 writeb(byte, this->IO_ADDR_W + 0x801);
}
