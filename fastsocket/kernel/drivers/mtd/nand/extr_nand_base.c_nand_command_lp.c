
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int options; int chipsize; int (* read_byte ) (struct mtd_info*) ;int chip_delay; int dev_ready; int (* cmd_ctrl ) (struct mtd_info*,int,int) ;} ;
struct mtd_info {scalar_t__ writesize; struct nand_chip* priv; } ;


 int NAND_ALE ;
 int NAND_BUSWIDTH_16 ;
 int NAND_CLE ;




 int NAND_CMD_NONE ;


 unsigned int NAND_CMD_READOOB ;
 int NAND_CMD_READSTART ;



 int NAND_CMD_RNDOUTSTART ;







 int NAND_CTRL_CHANGE ;
 int NAND_NCE ;
 int NAND_STATUS_READY ;
 int nand_wait_ready (struct mtd_info*) ;
 int ndelay (int) ;
 int stub1 (struct mtd_info*,unsigned int,int) ;
 int stub10 (struct mtd_info*) ;
 int stub11 (struct mtd_info*,int,int) ;
 int stub12 (struct mtd_info*,int,int) ;
 int stub13 (struct mtd_info*,int,int) ;
 int stub14 (struct mtd_info*,int,int) ;
 int stub2 (struct mtd_info*,int,int) ;
 int stub3 (struct mtd_info*,int,int) ;
 int stub4 (struct mtd_info*,int,int) ;
 int stub5 (struct mtd_info*,int,int) ;
 int stub6 (struct mtd_info*,int,int) ;
 int stub7 (struct mtd_info*,int,int) ;
 int stub8 (struct mtd_info*,int const,int) ;
 int stub9 (struct mtd_info*,int,int) ;
 int udelay (int ) ;

__attribute__((used)) static void nand_command_lp(struct mtd_info *mtd, unsigned int command,
       int column, int page_addr)
{
 register struct nand_chip *chip = mtd->priv;


 if (command == NAND_CMD_READOOB) {
  column += mtd->writesize;
  command = 138;
 }


 chip->cmd_ctrl(mtd, command & 0xff,
         NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);

 if (column != -1 || page_addr != -1) {
  int ctrl = NAND_CTRL_CHANGE | NAND_NCE | NAND_ALE;


  if (column != -1) {

   if (chip->options & NAND_BUSWIDTH_16)
    column >>= 1;
   chip->cmd_ctrl(mtd, column, ctrl);
   ctrl &= ~NAND_CTRL_CHANGE;
   chip->cmd_ctrl(mtd, column >> 8, ctrl);
  }
  if (page_addr != -1) {
   chip->cmd_ctrl(mtd, page_addr, ctrl);
   chip->cmd_ctrl(mtd, page_addr >> 8,
           NAND_NCE | NAND_ALE);

   if (chip->chipsize > (128 << 20))
    chip->cmd_ctrl(mtd, page_addr >> 16,
            NAND_NCE | NAND_ALE);
  }
 }
 chip->cmd_ctrl(mtd, NAND_CMD_NONE, NAND_NCE | NAND_CTRL_CHANGE);





 switch (command) {

 case 143:
 case 139:
 case 141:
 case 140:
 case 134:
 case 136:
 case 133:
 case 142:
  return;




 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  udelay(chip->chip_delay);
  return;

 case 137:
  if (chip->dev_ready)
   break;
  udelay(chip->chip_delay);
  chip->cmd_ctrl(mtd, 133,
          NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
  chip->cmd_ctrl(mtd, NAND_CMD_NONE,
          NAND_NCE | NAND_CTRL_CHANGE);
  while (!(chip->read_byte(mtd) & NAND_STATUS_READY)) ;
  return;

 case 135:

  chip->cmd_ctrl(mtd, NAND_CMD_RNDOUTSTART,
          NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
  chip->cmd_ctrl(mtd, NAND_CMD_NONE,
          NAND_NCE | NAND_CTRL_CHANGE);
  return;

 case 138:
  chip->cmd_ctrl(mtd, NAND_CMD_READSTART,
          NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
  chip->cmd_ctrl(mtd, NAND_CMD_NONE,
          NAND_NCE | NAND_CTRL_CHANGE);


 default:




  if (!chip->dev_ready) {
   udelay(chip->chip_delay);
   return;
  }
 }



 ndelay(100);

 nand_wait_ready(mtd);
}
