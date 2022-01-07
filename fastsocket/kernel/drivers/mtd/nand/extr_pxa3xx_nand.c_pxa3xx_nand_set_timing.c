
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pxa3xx_nand_timing {int tAR; int tWHR; int tR; int tRP; int tRH; int tWP; int tWH; int tCS; int tCH; } ;
struct pxa3xx_nand_info {int clk; } ;


 int NDTR0CS0 ;
 int NDTR0_tCH (int ) ;
 int NDTR0_tCS (int ) ;
 int NDTR0_tRH (int ) ;
 int NDTR0_tRP (int ) ;
 int NDTR0_tWH (int ) ;
 int NDTR0_tWP (int ) ;
 int NDTR1CS0 ;
 int NDTR1_tAR (int ) ;
 int NDTR1_tR (int ) ;
 int NDTR1_tWHR (int ) ;
 unsigned long clk_get_rate (int ) ;
 int nand_writel (struct pxa3xx_nand_info*,int ,int) ;
 int ns2cycle (int ,unsigned long) ;

__attribute__((used)) static void pxa3xx_nand_set_timing(struct pxa3xx_nand_info *info,
       const struct pxa3xx_nand_timing *t)
{
 unsigned long nand_clk = clk_get_rate(info->clk);
 uint32_t ndtr0, ndtr1;

 ndtr0 = NDTR0_tCH(ns2cycle(t->tCH, nand_clk)) |
  NDTR0_tCS(ns2cycle(t->tCS, nand_clk)) |
  NDTR0_tWH(ns2cycle(t->tWH, nand_clk)) |
  NDTR0_tWP(ns2cycle(t->tWP, nand_clk)) |
  NDTR0_tRH(ns2cycle(t->tRH, nand_clk)) |
  NDTR0_tRP(ns2cycle(t->tRP, nand_clk));

 ndtr1 = NDTR1_tR(ns2cycle(t->tR, nand_clk)) |
  NDTR1_tWHR(ns2cycle(t->tWHR, nand_clk)) |
  NDTR1_tAR(ns2cycle(t->tAR, nand_clk));

 nand_writel(info, NDTR0CS0, ndtr0);
 nand_writel(info, NDTR1CS0, ndtr1);
}
