
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int rate; int scale_reg; } ;


 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static int hclk_set_rate(struct clk *clk, u32 rate)
{
 u32 tmp;
 tmp = __raw_readl(clk->scale_reg);
 tmp = tmp & ~0x3;
 switch (rate) {
 case 1:
  break;
 case 2:
  tmp |= 1;
  break;
 case 4:
  tmp |= 2;
  break;
 }

 __raw_writel(tmp, clk->scale_reg);
 clk->rate = rate;
 return 0;
}
