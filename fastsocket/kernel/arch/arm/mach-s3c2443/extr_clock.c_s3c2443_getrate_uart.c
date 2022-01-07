
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 int S3C2443_CLKDIV1 ;
 unsigned long S3C2443_CLKDIV1_UARTDIV_MASK ;
 unsigned long S3C2443_CLKDIV1_UARTDIV_SHIFT ;
 unsigned long __raw_readl (int ) ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long s3c2443_getrate_uart(struct clk *clk)
{
 unsigned long parent_rate = clk_get_rate(clk->parent);
 unsigned long div = __raw_readl(S3C2443_CLKDIV1);

 div &= S3C2443_CLKDIV1_UARTDIV_MASK;
 div >>= S3C2443_CLKDIV1_UARTDIV_SHIFT;

 return parent_rate / (div + 1);
}
