
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
struct davinci_nand_info {int dummy; } ;


 int BIT (int ) ;
 int NANDFSR_OFFSET ;
 int davinci_nand_readl (struct davinci_nand_info*,int ) ;
 struct davinci_nand_info* to_davinci_nand (struct mtd_info*) ;

__attribute__((used)) static int nand_davinci_dev_ready(struct mtd_info *mtd)
{
 struct davinci_nand_info *info = to_davinci_nand(mtd);

 return davinci_nand_readl(info, NANDFSR_OFFSET) & BIT(0);
}
