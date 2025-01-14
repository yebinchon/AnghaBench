
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {struct clk* parent; } ;


 int CCM_CSCR ;
 int CCM_CSCR_ARM_SRC ;
 scalar_t__ CHIP_REV_2_0 ;
 int EINVAL ;
 int ENODEV ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 struct clk mpll_main1_clk ;
 struct clk mpll_main2_clk ;
 scalar_t__ mx27_revision () ;

__attribute__((used)) static int clk_cpu_set_parent(struct clk *clk, struct clk *parent)
{
 int cscr = __raw_readl(CCM_CSCR);

 if (clk->parent == parent)
  return 0;

 if (mx27_revision() >= CHIP_REV_2_0) {
  if (parent == &mpll_main1_clk) {
   cscr |= CCM_CSCR_ARM_SRC;
  } else {
   if (parent == &mpll_main2_clk)
    cscr &= ~CCM_CSCR_ARM_SRC;
   else
    return -EINVAL;
  }
  __raw_writel(cscr, CCM_CSCR);
  clk->parent = parent;
  return 0;
 }
 return -ENODEV;
}
