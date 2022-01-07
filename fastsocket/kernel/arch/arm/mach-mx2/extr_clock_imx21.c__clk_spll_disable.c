
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int dummy; } ;


 int CCM_CSCR ;
 int CCM_CSCR_SPEN ;
 int __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;

__attribute__((used)) static void _clk_spll_disable(struct clk *clk)
{
 u32 reg;

 reg = __raw_readl(CCM_CSCR);
 reg &= ~CCM_CSCR_SPEN;
 __raw_writel(reg, CCM_CSCR);
}
