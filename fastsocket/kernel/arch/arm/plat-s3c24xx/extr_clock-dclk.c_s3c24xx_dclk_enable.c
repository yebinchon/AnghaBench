
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {unsigned long ctrlbit; } ;


 int S3C24XX_DCLKCON ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;

__attribute__((used)) static int s3c24xx_dclk_enable(struct clk *clk, int enable)
{
 unsigned long dclkcon = __raw_readl(S3C24XX_DCLKCON);

 if (enable)
  dclkcon |= clk->ctrlbit;
 else
  dclkcon &= ~clk->ctrlbit;

 __raw_writel(dclkcon, S3C24XX_DCLKCON);

 return 0;
}
