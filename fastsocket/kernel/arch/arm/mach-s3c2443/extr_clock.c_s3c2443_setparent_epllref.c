
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {struct clk* parent; } ;


 int EINVAL ;
 int S3C2443_CLKSRC ;
 unsigned long S3C2443_CLKSRC_EPLLREF_EXTCLK ;
 unsigned long S3C2443_CLKSRC_EPLLREF_MASK ;
 unsigned long S3C2443_CLKSRC_EPLLREF_XTAL ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 struct clk clk_ext ;
 struct clk clk_mpllref ;
 struct clk clk_xtal ;

__attribute__((used)) static int s3c2443_setparent_epllref(struct clk *clk, struct clk *parent)
{
 unsigned long clksrc = __raw_readl(S3C2443_CLKSRC);

 clksrc &= ~S3C2443_CLKSRC_EPLLREF_MASK;

 if (parent == &clk_xtal)
  clksrc |= S3C2443_CLKSRC_EPLLREF_XTAL;
 else if (parent == &clk_ext)
  clksrc |= S3C2443_CLKSRC_EPLLREF_EXTCLK;
 else if (parent != &clk_mpllref)
  return -EINVAL;

 __raw_writel(clksrc, S3C2443_CLKSRC);
 clk->parent = parent;

 return 0;
}
