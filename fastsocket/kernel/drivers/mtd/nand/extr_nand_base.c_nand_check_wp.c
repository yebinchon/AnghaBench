
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int (* read_byte ) (struct mtd_info*) ;int (* cmdfunc ) (struct mtd_info*,int ,int,int) ;} ;
struct mtd_info {struct nand_chip* priv; } ;


 int NAND_CMD_STATUS ;
 int NAND_STATUS_WP ;
 int stub1 (struct mtd_info*,int ,int,int) ;
 int stub2 (struct mtd_info*) ;

__attribute__((used)) static int nand_check_wp(struct mtd_info *mtd)
{
 struct nand_chip *chip = mtd->priv;

 chip->cmdfunc(mtd, NAND_CMD_STATUS, -1, -1);
 return (chip->read_byte(mtd) & NAND_STATUS_WP) ? 0 : 1;
}
