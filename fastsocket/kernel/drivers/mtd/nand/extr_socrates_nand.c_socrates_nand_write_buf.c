
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct socrates_nand_host {int io_base; } ;
struct nand_chip {struct socrates_nand_host* priv; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int const FPGA_NAND_CMD_WRITE ;
 int const FPGA_NAND_DATA_SHIFT ;
 int const FPGA_NAND_ENABLE ;
 int out_be32 (int ,int const) ;

__attribute__((used)) static void socrates_nand_write_buf(struct mtd_info *mtd,
  const uint8_t *buf, int len)
{
 int i;
 struct nand_chip *this = mtd->priv;
 struct socrates_nand_host *host = this->priv;

 for (i = 0; i < len; i++) {
  out_be32(host->io_base, FPGA_NAND_ENABLE |
    FPGA_NAND_CMD_WRITE |
    (buf[i] << FPGA_NAND_DATA_SHIFT));
 }
}
