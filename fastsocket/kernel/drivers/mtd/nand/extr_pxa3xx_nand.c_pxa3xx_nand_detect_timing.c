
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pxa3xx_nand_timing {void* tAR; void* tWHR; void* tR; void* tRP; void* tRH; void* tWP; void* tWH; void* tCS; void* tCH; } ;
struct pxa3xx_nand_info {int clk; } ;


 int NDTR0CS0 ;
 int NDTR1CS0 ;
 unsigned long clk_get_rate (int ) ;
 void* cycle2ns (int ,unsigned long) ;
 int nand_readl (struct pxa3xx_nand_info*,int ) ;
 int tAR_NDTR1 (int ) ;
 int tCH_NDTR0 (int ) ;
 int tCS_NDTR0 (int ) ;
 int tRH_NDTR0 (int ) ;
 int tRP_NDTR0 (int ) ;
 int tR_NDTR1 (int ) ;
 int tWHR_NDTR1 (int ) ;
 int tWH_NDTR0 (int ) ;
 int tWP_NDTR0 (int ) ;

__attribute__((used)) static void pxa3xx_nand_detect_timing(struct pxa3xx_nand_info *info,
          struct pxa3xx_nand_timing *t)
{
 unsigned long nand_clk = clk_get_rate(info->clk);
 uint32_t ndtr0 = nand_readl(info, NDTR0CS0);
 uint32_t ndtr1 = nand_readl(info, NDTR1CS0);

 t->tCH = cycle2ns(tCH_NDTR0(ndtr0), nand_clk);
 t->tCS = cycle2ns(tCS_NDTR0(ndtr0), nand_clk);
 t->tWH = cycle2ns(tWH_NDTR0(ndtr0), nand_clk);
 t->tWP = cycle2ns(tWP_NDTR0(ndtr0), nand_clk);
 t->tRH = cycle2ns(tRH_NDTR0(ndtr0), nand_clk);
 t->tRP = cycle2ns(tRP_NDTR0(ndtr0), nand_clk);

 t->tR = cycle2ns(tR_NDTR1(ndtr1), nand_clk);
 t->tWHR = cycle2ns(tWHR_NDTR1(ndtr1), nand_clk);
 t->tAR = cycle2ns(tAR_NDTR1(ndtr1), nand_clk);
}
