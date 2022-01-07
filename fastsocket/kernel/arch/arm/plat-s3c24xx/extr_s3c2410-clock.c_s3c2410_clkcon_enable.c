
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {unsigned int ctrlbit; } ;


 int S3C2410_CLKCON ;
 unsigned long S3C2410_CLKCON_IDLE ;
 unsigned long S3C2410_CLKCON_POWER ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;

int s3c2410_clkcon_enable(struct clk *clk, int enable)
{
 unsigned int clocks = clk->ctrlbit;
 unsigned long clkcon;

 clkcon = __raw_readl(S3C2410_CLKCON);

 if (enable)
  clkcon |= clocks;
 else
  clkcon &= ~clocks;


 clkcon &= ~(S3C2410_CLKCON_IDLE|S3C2410_CLKCON_POWER);

 __raw_writel(clkcon, S3C2410_CLKCON);

 return 0;
}
