
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa3xx_nand_info {int dummy; } ;
struct mtd_info {struct pxa3xx_nand_info* priv; } ;


 int NDSR ;
 int NDSR_RDY ;
 int nand_readl (struct pxa3xx_nand_info*,int ) ;

__attribute__((used)) static int pxa3xx_nand_dev_ready(struct mtd_info *mtd)
{
 struct pxa3xx_nand_info *info = mtd->priv;
 return (nand_readl(info, NDSR) & NDSR_RDY) ? 1 : 0;
}
