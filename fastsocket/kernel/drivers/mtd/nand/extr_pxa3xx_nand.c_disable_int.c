
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pxa3xx_nand_info {int dummy; } ;


 int NDCR ;
 int nand_readl (struct pxa3xx_nand_info*,int ) ;
 int nand_writel (struct pxa3xx_nand_info*,int ,int) ;

__attribute__((used)) static void disable_int(struct pxa3xx_nand_info *info, uint32_t int_mask)
{
 uint32_t ndcr;

 ndcr = nand_readl(info, NDCR);
 nand_writel(info, NDCR, ndcr | int_mask);
}
