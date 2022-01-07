
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int dummy; } ;


 int PLL1 ;
 unsigned long pll_get_rate (struct clk*,int ) ;
 int pm_readl (int ) ;

__attribute__((used)) static unsigned long pll1_get_rate(struct clk *clk)
{
 u32 control;

 control = pm_readl(PLL1);

 return pll_get_rate(clk, control);
}
