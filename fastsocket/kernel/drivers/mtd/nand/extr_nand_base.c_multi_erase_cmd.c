
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int (* cmdfunc ) (struct mtd_info*,int ,int,int) ;} ;
struct mtd_info {struct nand_chip* priv; } ;


 int NAND_CMD_ERASE1 ;
 int NAND_CMD_ERASE2 ;
 int stub1 (struct mtd_info*,int ,int,int) ;
 int stub2 (struct mtd_info*,int ,int,int) ;
 int stub3 (struct mtd_info*,int ,int,int) ;
 int stub4 (struct mtd_info*,int ,int,int) ;
 int stub5 (struct mtd_info*,int ,int,int) ;

__attribute__((used)) static void multi_erase_cmd(struct mtd_info *mtd, int page)
{
 struct nand_chip *chip = mtd->priv;

 chip->cmdfunc(mtd, NAND_CMD_ERASE1, -1, page++);
 chip->cmdfunc(mtd, NAND_CMD_ERASE1, -1, page++);
 chip->cmdfunc(mtd, NAND_CMD_ERASE1, -1, page++);
 chip->cmdfunc(mtd, NAND_CMD_ERASE1, -1, page);
 chip->cmdfunc(mtd, NAND_CMD_ERASE2, -1, -1);
}
