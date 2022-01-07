
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {scalar_t__ usage; struct clk* parent; } ;


 int EINVAL ;
 int S3C2443_SCLKCON ;
 unsigned long S3C2443_SCLKCON_HSMMCCLK_EPLL ;
 unsigned long S3C2443_SCLKCON_HSMMCCLK_EXT ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 struct clk clk_epll ;
 struct clk clk_ext ;

__attribute__((used)) static int s3c2443_setparent_hsmmc(struct clk *clk, struct clk *parent)
{
 unsigned long clksrc = __raw_readl(S3C2443_SCLKCON);

 clksrc &= ~(S3C2443_SCLKCON_HSMMCCLK_EXT |
      S3C2443_SCLKCON_HSMMCCLK_EPLL);

 if (parent == &clk_epll)
  clksrc |= S3C2443_SCLKCON_HSMMCCLK_EPLL;
 else if (parent == &clk_ext)
  clksrc |= S3C2443_SCLKCON_HSMMCCLK_EXT;
 else
  return -EINVAL;

 if (clk->usage > 0) {
  __raw_writel(clksrc, S3C2443_SCLKCON);
 }

 clk->parent = parent;
 return 0;
}
