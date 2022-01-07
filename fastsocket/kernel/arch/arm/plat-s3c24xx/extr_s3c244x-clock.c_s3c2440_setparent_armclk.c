
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {struct clk* parent; } ;


 int EINVAL ;
 int S3C2440_CAMDIVN ;
 unsigned long S3C2440_CAMDIVN_DVSEN ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 struct clk clk_f ;
 struct clk clk_h ;

__attribute__((used)) static int s3c2440_setparent_armclk(struct clk *clk, struct clk *parent)
{
 unsigned long camdivn;
 unsigned long dvs;

 if (parent == &clk_f)
  dvs = 0;
 else if (parent == &clk_h)
  dvs = S3C2440_CAMDIVN_DVSEN;
 else
  return -EINVAL;

 clk->parent = parent;

 camdivn = __raw_readl(S3C2440_CAMDIVN);
 camdivn &= ~S3C2440_CAMDIVN_DVSEN;
 camdivn |= dvs;
 __raw_writel(camdivn, S3C2440_CAMDIVN);

 return 0;
}
