
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {struct clk* parent; } ;


 int EINVAL ;
 int S3C2443_CLKSRC ;
 unsigned long S3C2443_CLKSRC_ESYSCLK_EPLL ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 struct clk clk_epll ;
 struct clk clk_epllref ;

__attribute__((used)) static int s3c2443_setparent_esysclk(struct clk *clk, struct clk *parent)
{
 unsigned long clksrc = __raw_readl(S3C2443_CLKSRC);

 if (parent == &clk_epll)
  clksrc |= S3C2443_CLKSRC_ESYSCLK_EPLL;
 else if (parent == &clk_epllref)
  clksrc &= ~S3C2443_CLKSRC_ESYSCLK_EPLL;
 else
  return -EINVAL;

 __raw_writel(clksrc, S3C2443_CLKSRC);
 clk->parent = parent;

 return 0;
}
