
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int parent; } ;


 int EINVAL ;
 int S3C_CLK_DIV0 ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int armclk_mask ;
 unsigned long clk_get_rate (int ) ;
 unsigned long clk_round_rate (struct clk*,unsigned long) ;

__attribute__((used)) static int s3c64xx_clk_arm_set_rate(struct clk *clk, unsigned long rate)
{
 unsigned long parent = clk_get_rate(clk->parent);
 u32 div;
 u32 val;

 if (rate < parent / (armclk_mask + 1))
  return -EINVAL;

 rate = clk_round_rate(clk, rate);
 div = clk_get_rate(clk->parent) / rate;

 val = __raw_readl(S3C_CLK_DIV0);
 val &= ~armclk_mask;
 val |= (div - 1);
 __raw_writel(val, S3C_CLK_DIV0);

 return 0;

}
