
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 int S3C2443_CLKDIV0 ;
 unsigned long S3C2443_CLKDIV0_PREDIV_MASK ;
 unsigned long S3C2443_CLKDIV0_PREDIV_SHIFT ;
 unsigned long __raw_readl (int ) ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long s3c2443_prediv_getrate(struct clk *clk)
{
 unsigned long rate = clk_get_rate(clk->parent);
 unsigned long clkdiv0 = __raw_readl(S3C2443_CLKDIV0);

 clkdiv0 &= S3C2443_CLKDIV0_PREDIV_MASK;
 clkdiv0 >>= S3C2443_CLKDIV0_PREDIV_SHIFT;

 return rate / (clkdiv0 + 1);
}
