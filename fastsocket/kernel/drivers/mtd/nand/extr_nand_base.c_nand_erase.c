
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
struct erase_info {int dummy; } ;


 int nand_erase_nand (struct mtd_info*,struct erase_info*,int ) ;

__attribute__((used)) static int nand_erase(struct mtd_info *mtd, struct erase_info *instr)
{
 return nand_erase_nand(mtd, instr, 0);
}
