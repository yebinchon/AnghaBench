
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int FL_PM_SUSPENDED ;
 int nand_get_device (struct nand_chip*,struct mtd_info*,int ) ;

__attribute__((used)) static int nand_suspend(struct mtd_info *mtd)
{
 struct nand_chip *chip = mtd->priv;

 return nand_get_device(chip, mtd, FL_PM_SUSPENDED);
}
