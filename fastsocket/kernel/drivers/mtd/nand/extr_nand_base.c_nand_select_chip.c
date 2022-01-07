
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int (* cmd_ctrl ) (struct mtd_info*,int ,int) ;} ;
struct mtd_info {struct nand_chip* priv; } ;


 int BUG () ;
 int NAND_CMD_NONE ;
 int NAND_CTRL_CHANGE ;
 int stub1 (struct mtd_info*,int ,int) ;

__attribute__((used)) static void nand_select_chip(struct mtd_info *mtd, int chipnr)
{
 struct nand_chip *chip = mtd->priv;

 switch (chipnr) {
 case -1:
  chip->cmd_ctrl(mtd, NAND_CMD_NONE, 0 | NAND_CTRL_CHANGE);
  break;
 case 0:
  break;

 default:
  BUG();
 }
}
