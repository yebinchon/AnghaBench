
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {unsigned long rate; int parent; } ;


 int EINVAL ;
 unsigned long S3C2410_DCLKCON_DCLK0_CMP (unsigned long) ;
 unsigned long S3C2410_DCLKCON_DCLK0_CMP_MASK ;
 unsigned long S3C2410_DCLKCON_DCLK0_DIV (unsigned long) ;
 unsigned long S3C2410_DCLKCON_DCLK0_DIV_MASK ;
 unsigned long S3C2410_DCLKCON_DCLK1_CMP (unsigned long) ;
 unsigned long S3C2410_DCLKCON_DCLK1_CMP_MASK ;
 unsigned long S3C2410_DCLKCON_DCLK1_DIV (unsigned long) ;
 unsigned long S3C2410_DCLKCON_DCLK1_DIV_MASK ;
 int S3C24XX_DCLKCON ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 unsigned long clk_get_rate (int ) ;
 unsigned long s3c24xx_calc_div (struct clk*,unsigned long) ;
 struct clk s3c24xx_dclk0 ;
 struct clk s3c24xx_dclk1 ;

__attribute__((used)) static int s3c24xx_set_dclk_rate(struct clk *clk, unsigned long rate)
{
 unsigned long mask, data, div = s3c24xx_calc_div(clk, rate);

 if (div == 0)
  return -EINVAL;

 if (clk == &s3c24xx_dclk0) {
  mask = S3C2410_DCLKCON_DCLK0_DIV_MASK |
   S3C2410_DCLKCON_DCLK0_CMP_MASK;
  data = S3C2410_DCLKCON_DCLK0_DIV(div) |
   S3C2410_DCLKCON_DCLK0_CMP((div + 1) / 2);
 } else if (clk == &s3c24xx_dclk1) {
  mask = S3C2410_DCLKCON_DCLK1_DIV_MASK |
   S3C2410_DCLKCON_DCLK1_CMP_MASK;
  data = S3C2410_DCLKCON_DCLK1_DIV(div) |
   S3C2410_DCLKCON_DCLK1_CMP((div + 1) / 2);
 } else
  return -EINVAL;

 clk->rate = clk_get_rate(clk->parent) / div;
 __raw_writel(((__raw_readl(S3C24XX_DCLKCON) & ~mask) | data),
  S3C24XX_DCLKCON);
 return clk->rate;
}
