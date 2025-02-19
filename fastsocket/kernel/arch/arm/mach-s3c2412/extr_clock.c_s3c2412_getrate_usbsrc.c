
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 int S3C2410_CLKDIVN ;
 unsigned long S3C2412_CLKDIVN_USB48DIV ;
 unsigned long __raw_readl (int ) ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long s3c2412_getrate_usbsrc(struct clk *clk)
{
 unsigned long parent_rate = clk_get_rate(clk->parent);
 unsigned long div = __raw_readl(S3C2410_CLKDIVN);

 return parent_rate / ((div & S3C2412_CLKDIVN_USB48DIV) ? 2 : 1);
}
