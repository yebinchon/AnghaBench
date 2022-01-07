
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int dummy; } ;


 int OMAP_AUTOEXTCLKMODE_MASK ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int prcm_clksrc_ctrl ;

__attribute__((used)) static int omap2_enable_osc_ck(struct clk *clk)
{
 u32 pcc;

 pcc = __raw_readl(prcm_clksrc_ctrl);

 __raw_writel(pcc & ~OMAP_AUTOEXTCLKMODE_MASK, prcm_clksrc_ctrl);

 return 0;
}
