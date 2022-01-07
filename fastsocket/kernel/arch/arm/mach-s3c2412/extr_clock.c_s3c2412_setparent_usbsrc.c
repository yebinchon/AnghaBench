
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {struct clk* parent; } ;


 int EINVAL ;
 int S3C2412_CLKSRC ;
 unsigned long S3C2412_CLKSRC_USBCLK_HCLK ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 struct clk clk_h ;
 struct clk clk_usysclk ;

__attribute__((used)) static int s3c2412_setparent_usbsrc(struct clk *clk, struct clk *parent)
{
 unsigned long clksrc = __raw_readl(S3C2412_CLKSRC);

 if (parent == &clk_usysclk)
  clksrc &= ~S3C2412_CLKSRC_USBCLK_HCLK;
 else if (parent == &clk_h)
  clksrc |= S3C2412_CLKSRC_USBCLK_HCLK;
 else
  return -EINVAL;

 clk->parent = parent;

 __raw_writel(clksrc, S3C2412_CLKSRC);
 return 0;
}
