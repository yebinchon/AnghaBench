
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int CCM_CSCR ;
 unsigned long CCM_CSCR_SPEN ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;

__attribute__((used)) static void clk_spll_disable(struct clk *clk)
{
 unsigned long reg;

 reg = __raw_readl(CCM_CSCR);
 reg &= ~CCM_CSCR_SPEN;
 __raw_writel(reg, CCM_CSCR);
}
