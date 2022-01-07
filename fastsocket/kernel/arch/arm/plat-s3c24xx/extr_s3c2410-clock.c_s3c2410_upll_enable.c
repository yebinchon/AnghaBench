
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int S3C2410_CLKSLOW ;
 unsigned long S3C2410_CLKSLOW_UCLK_OFF ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int udelay (int) ;

__attribute__((used)) static int s3c2410_upll_enable(struct clk *clk, int enable)
{
 unsigned long clkslow = __raw_readl(S3C2410_CLKSLOW);
 unsigned long orig = clkslow;

 if (enable)
  clkslow &= ~S3C2410_CLKSLOW_UCLK_OFF;
 else
  clkslow |= S3C2410_CLKSLOW_UCLK_OFF;

 __raw_writel(clkslow, S3C2410_CLKSLOW);



 if (enable && (orig & S3C2410_CLKSLOW_UCLK_OFF))
  udelay(200);

 return 0;
}
