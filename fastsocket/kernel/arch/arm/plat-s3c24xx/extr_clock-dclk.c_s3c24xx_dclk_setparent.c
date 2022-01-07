
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {scalar_t__ ctrlbit; struct clk* parent; } ;


 int EINVAL ;
 scalar_t__ S3C2410_DCLKCON_DCLK0EN ;
 unsigned long S3C2410_DCLKCON_DCLK0_UCLK ;
 unsigned long S3C2410_DCLKCON_DCLK1_UCLK ;
 int S3C24XX_DCLKCON ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 struct clk clk_p ;
 struct clk clk_upll ;

__attribute__((used)) static int s3c24xx_dclk_setparent(struct clk *clk, struct clk *parent)
{
 unsigned long dclkcon;
 unsigned int uclk;

 if (parent == &clk_upll)
  uclk = 1;
 else if (parent == &clk_p)
  uclk = 0;
 else
  return -EINVAL;

 clk->parent = parent;

 dclkcon = __raw_readl(S3C24XX_DCLKCON);

 if (clk->ctrlbit == S3C2410_DCLKCON_DCLK0EN) {
  if (uclk)
   dclkcon |= S3C2410_DCLKCON_DCLK0_UCLK;
  else
   dclkcon &= ~S3C2410_DCLKCON_DCLK0_UCLK;
 } else {
  if (uclk)
   dclkcon |= S3C2410_DCLKCON_DCLK1_UCLK;
  else
   dclkcon &= ~S3C2410_DCLKCON_DCLK1_UCLK;
 }

 __raw_writel(dclkcon, S3C24XX_DCLKCON);

 return 0;
}
