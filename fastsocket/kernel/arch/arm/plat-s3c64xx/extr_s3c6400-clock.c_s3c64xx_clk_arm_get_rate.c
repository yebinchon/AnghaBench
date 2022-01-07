
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int parent; } ;


 int S3C_CLK_DIV0 ;
 int __raw_readl (int ) ;
 int armclk_mask ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long s3c64xx_clk_arm_get_rate(struct clk *clk)
{
 unsigned long rate = clk_get_rate(clk->parent);
 u32 clkdiv;


 clkdiv = __raw_readl(S3C_CLK_DIV0) & armclk_mask;

 return rate / (clkdiv + 1);
}
