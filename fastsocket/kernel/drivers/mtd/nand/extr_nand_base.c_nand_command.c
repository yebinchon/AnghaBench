
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int options; int chipsize; int (* read_byte ) (struct mtd_info*) ;int chip_delay; int dev_ready; int (* cmd_ctrl ) (struct mtd_info*,int,int) ;} ;
struct mtd_info {int writesize; struct nand_chip* priv; } ;


 int NAND_BUSWIDTH_16 ;


 int NAND_CMD_NONE ;

 int NAND_CMD_READ0 ;
 int NAND_CMD_READ1 ;
 int NAND_CMD_READOOB ;



 int NAND_CTRL_ALE ;
 int NAND_CTRL_CHANGE ;
 int NAND_CTRL_CLE ;
 int NAND_NCE ;
 int NAND_STATUS_READY ;
 int nand_wait_ready (struct mtd_info*) ;
 int ndelay (int) ;
 int stub1 (struct mtd_info*,int,int) ;
 int stub10 (struct mtd_info*) ;
 int stub2 (struct mtd_info*,unsigned int,int) ;
 int stub3 (struct mtd_info*,int,int) ;
 int stub4 (struct mtd_info*,int,int) ;
 int stub5 (struct mtd_info*,int,int) ;
 int stub6 (struct mtd_info*,int,int) ;
 int stub7 (struct mtd_info*,int,int) ;
 int stub8 (struct mtd_info*,int const,int) ;
 int stub9 (struct mtd_info*,int,int) ;
 int udelay (int ) ;

__attribute__((used)) static void nand_command(struct mtd_info *mtd, unsigned int command,
    int column, int page_addr)
{
 register struct nand_chip *chip = mtd->priv;
 int ctrl = NAND_CTRL_CLE | NAND_CTRL_CHANGE;




 if (command == 129) {
  int readcmd;

  if (column >= mtd->writesize) {

   column -= mtd->writesize;
   readcmd = NAND_CMD_READOOB;
  } else if (column < 256) {

   readcmd = NAND_CMD_READ0;
  } else {
   column -= 256;
   readcmd = NAND_CMD_READ1;
  }
  chip->cmd_ctrl(mtd, readcmd, ctrl);
  ctrl &= ~NAND_CTRL_CHANGE;
 }
 chip->cmd_ctrl(mtd, command, ctrl);




 ctrl = NAND_CTRL_ALE | NAND_CTRL_CHANGE;

 if (column != -1) {

  if (chip->options & NAND_BUSWIDTH_16)
   column >>= 1;
  chip->cmd_ctrl(mtd, column, ctrl);
  ctrl &= ~NAND_CTRL_CHANGE;
 }
 if (page_addr != -1) {
  chip->cmd_ctrl(mtd, page_addr, ctrl);
  ctrl &= ~NAND_CTRL_CHANGE;
  chip->cmd_ctrl(mtd, page_addr >> 8, ctrl);

  if (chip->chipsize > (32 << 20))
   chip->cmd_ctrl(mtd, page_addr >> 16, ctrl);
 }
 chip->cmd_ctrl(mtd, NAND_CMD_NONE, NAND_NCE | NAND_CTRL_CHANGE);





 switch (command) {

 case 131:
 case 133:
 case 132:
 case 129:
 case 128:
  return;

 case 130:
  if (chip->dev_ready)
   break;
  udelay(chip->chip_delay);
  chip->cmd_ctrl(mtd, 128,
          NAND_CTRL_CLE | NAND_CTRL_CHANGE);
  chip->cmd_ctrl(mtd,
          NAND_CMD_NONE, NAND_NCE | NAND_CTRL_CHANGE);
  while (!(chip->read_byte(mtd) & NAND_STATUS_READY)) ;
  return;


 default:




  if (!chip->dev_ready) {
   udelay(chip->chip_delay);
   return;
  }
 }


 ndelay(100);

 nand_wait_ready(mtd);
}
