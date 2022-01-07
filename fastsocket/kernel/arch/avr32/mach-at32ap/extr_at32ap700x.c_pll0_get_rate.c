
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int dummy; } ;


 int PLL0 ;
 unsigned long pll_get_rate (struct clk*,int ) ;
 int pm_readl (int ) ;

__attribute__((used)) static unsigned long pll0_get_rate(struct clk *clk)
{
 u32 control;

 control = pm_readl(PLL0);

 return pll_get_rate(clk, control);
}
