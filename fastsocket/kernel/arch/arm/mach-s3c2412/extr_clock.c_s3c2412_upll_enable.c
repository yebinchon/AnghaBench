
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int S3C2410_UPLLCON ;
 unsigned long S3C2412_PLLCON_OFF ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int udelay (int) ;

__attribute__((used)) static int s3c2412_upll_enable(struct clk *clk, int enable)
{
 unsigned long upllcon = __raw_readl(S3C2410_UPLLCON);
 unsigned long orig = upllcon;

 if (!enable)
  upllcon |= S3C2412_PLLCON_OFF;
 else
  upllcon &= ~S3C2412_PLLCON_OFF;

 __raw_writel(upllcon, S3C2410_UPLLCON);



 if (enable && (orig & S3C2412_PLLCON_OFF))
  udelay(150);

 return 0;
}
