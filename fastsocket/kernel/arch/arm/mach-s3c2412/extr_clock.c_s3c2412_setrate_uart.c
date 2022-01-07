
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 int S3C2410_CLKDIVN ;
 unsigned long S3C2412_CLKDIVN_UARTDIV_MASK ;
 unsigned long S3C2412_CLKDIVN_UARTDIV_SHIFT ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 unsigned long clk_get_rate (int ) ;
 unsigned long s3c2412_roundrate_clksrc (struct clk*,unsigned long) ;

__attribute__((used)) static int s3c2412_setrate_uart(struct clk *clk, unsigned long rate)
{
 unsigned long parent_rate = clk_get_rate(clk->parent);
 unsigned long clkdivn = __raw_readl(S3C2410_CLKDIVN);

 rate = s3c2412_roundrate_clksrc(clk, rate);

 clkdivn &= ~S3C2412_CLKDIVN_UARTDIV_MASK;
 clkdivn |= ((parent_rate / rate) - 1) << S3C2412_CLKDIVN_UARTDIV_SHIFT;

 __raw_writel(clkdivn, S3C2410_CLKDIVN);
 return 0;
}
