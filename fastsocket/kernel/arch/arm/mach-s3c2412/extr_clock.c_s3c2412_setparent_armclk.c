
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {struct clk* parent; } ;


 int EINVAL ;
 int S3C2410_CLKDIVN ;
 unsigned long S3C2412_CLKDIVN_DVSEN ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 struct clk clk_f ;
 struct clk clk_h ;
 struct clk clk_msysclk ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static int s3c2412_setparent_armclk(struct clk *clk, struct clk *parent)
{
 unsigned long flags;
 unsigned long clkdiv;
 unsigned long dvs;



 if (parent == &clk_msysclk || parent == &clk_f)
  dvs = 0;
 else if (parent == &clk_h)
  dvs = S3C2412_CLKDIVN_DVSEN;
 else
  return -EINVAL;

 clk->parent = parent;




 local_irq_save(flags);

 clkdiv = __raw_readl(S3C2410_CLKDIVN);
 clkdiv &= ~S3C2412_CLKDIVN_DVSEN;
 clkdiv |= dvs;
 __raw_writel(clkdiv, S3C2410_CLKDIVN);

 local_irq_restore(flags);

 return 0;
}
