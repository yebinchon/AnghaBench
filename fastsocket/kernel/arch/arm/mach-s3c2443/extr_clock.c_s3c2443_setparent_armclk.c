
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int EINVAL ;
 int S3C2443_CLKDIV0 ;
 unsigned long S3C2443_CLKDIV0_DVS ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 struct clk clk_armdiv ;
 struct clk clk_h ;

__attribute__((used)) static int s3c2443_setparent_armclk(struct clk *clk, struct clk *parent)
{
 unsigned long clkdiv0;

 clkdiv0 = __raw_readl(S3C2443_CLKDIV0);

 if (parent == &clk_armdiv)
  clkdiv0 &= ~S3C2443_CLKDIV0_DVS;
 else if (parent == &clk_h)
  clkdiv0 |= S3C2443_CLKDIV0_DVS;
 else
  return -EINVAL;

 __raw_writel(clkdiv0, S3C2443_CLKDIV0);
 return 0;
}
