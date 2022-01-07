
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct socrates_nand_host {int io_base; } ;
struct nand_chip {struct socrates_nand_host* priv; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int FPGA_NAND_CMD_ADDR ;
 int FPGA_NAND_CMD_COMMAND ;
 int FPGA_NAND_DATA_SHIFT ;
 int FPGA_NAND_ENABLE ;
 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 unsigned int NAND_NCE ;
 int out_be32 (int ,int) ;

__attribute__((used)) static void socrates_nand_cmd_ctrl(struct mtd_info *mtd, int cmd,
  unsigned int ctrl)
{
 struct nand_chip *nand_chip = mtd->priv;
 struct socrates_nand_host *host = nand_chip->priv;
 uint32_t val;

 if (cmd == NAND_CMD_NONE)
  return;

 if (ctrl & NAND_CLE)
  val = FPGA_NAND_CMD_COMMAND;
 else
  val = FPGA_NAND_CMD_ADDR;

 if (ctrl & NAND_NCE)
  val |= FPGA_NAND_ENABLE;

 val |= (cmd & 0xff) << FPGA_NAND_DATA_SHIFT;

 out_be32(host->io_base, val);
}
