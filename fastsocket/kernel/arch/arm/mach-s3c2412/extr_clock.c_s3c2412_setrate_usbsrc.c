
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 int S3C2410_CLKDIVN ;
 unsigned long S3C2412_CLKDIVN_USB48DIV ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 unsigned long clk_get_rate (int ) ;
 unsigned long s3c2412_roundrate_usbsrc (struct clk*,unsigned long) ;

__attribute__((used)) static int s3c2412_setrate_usbsrc(struct clk *clk, unsigned long rate)
{
 unsigned long parent_rate = clk_get_rate(clk->parent);
 unsigned long clkdivn = __raw_readl(S3C2410_CLKDIVN);

 rate = s3c2412_roundrate_usbsrc(clk, rate);

 if ((parent_rate / rate) == 2)
  clkdivn |= S3C2412_CLKDIVN_USB48DIV;
 else
  clkdivn &= ~S3C2412_CLKDIVN_USB48DIV;

 __raw_writel(clkdivn, S3C2410_CLKDIVN);
 return 0;
}
