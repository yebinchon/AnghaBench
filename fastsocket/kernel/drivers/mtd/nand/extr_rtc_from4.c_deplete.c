
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int (* cmdfunc ) (struct mtd_info*,int ,int,int) ;int (* select_chip ) (struct mtd_info*,int) ;int (* dev_ready ) (struct mtd_info*) ;} ;
struct mtd_info {struct nand_chip* priv; } ;


 int NAND_CMD_DEPLETE1 ;
 int NAND_CMD_DEPLETE2 ;
 int stub1 (struct mtd_info*) ;
 int stub2 (struct mtd_info*,int) ;
 int stub3 (struct mtd_info*,int ,int,int) ;
 int stub4 (struct mtd_info*,int ,int,int) ;
 int stub5 (struct mtd_info*,int ,int,int) ;
 int stub6 (struct mtd_info*,int ,int,int) ;

__attribute__((used)) static void deplete(struct mtd_info *mtd, int chip)
{
 struct nand_chip *this = mtd->priv;


 while (!this->dev_ready(mtd)) ;

 this->select_chip(mtd, chip);


 this->cmdfunc(mtd, NAND_CMD_DEPLETE1, 0x0000, 0x0000);
 this->cmdfunc(mtd, NAND_CMD_DEPLETE2, -1, -1);


 this->cmdfunc(mtd, NAND_CMD_DEPLETE1, 0x0000, 0x0004);
 this->cmdfunc(mtd, NAND_CMD_DEPLETE2, -1, -1);

}
