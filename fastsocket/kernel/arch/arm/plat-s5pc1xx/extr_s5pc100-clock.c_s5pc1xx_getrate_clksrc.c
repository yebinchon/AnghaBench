
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clksrc_clk {int divider_shift; int reg_divider; } ;
struct clk {int parent; } ;


 int __raw_readl (int ) ;
 unsigned long clk_get_rate (int ) ;
 struct clksrc_clk* to_clksrc (struct clk*) ;

__attribute__((used)) static unsigned long s5pc1xx_getrate_clksrc(struct clk *clk)
{
 struct clksrc_clk *sclk = to_clksrc(clk);
 unsigned long rate = clk_get_rate(clk->parent);
 u32 clkdiv = __raw_readl(sclk->reg_divider);

 clkdiv >>= sclk->divider_shift;
 clkdiv &= 0xf;
 clkdiv++;

 rate /= clkdiv;
 return rate;
}
