
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {unsigned int ctrlbit; } ;


 int S3C2443_HCLKCON ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;

__attribute__((used)) static int s3c2443_clkcon_enable_h(struct clk *clk, int enable)
{
 unsigned int clocks = clk->ctrlbit;
 unsigned long clkcon;

 clkcon = __raw_readl(S3C2443_HCLKCON);

 if (enable)
  clkcon |= clocks;
 else
  clkcon &= ~clocks;

 __raw_writel(clkcon, S3C2443_HCLKCON);

 return 0;
}
