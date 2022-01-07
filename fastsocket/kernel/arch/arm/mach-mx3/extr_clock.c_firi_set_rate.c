
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct clk {int parent; } ;


 int EINVAL ;
 int MXC_CCM_PDR1 ;
 unsigned long MXC_CCM_PDR1_FIRI_PODF_MASK ;
 unsigned long MXC_CCM_PDR1_FIRI_PODF_OFFSET ;
 unsigned long MXC_CCM_PDR1_FIRI_PRE_PODF_MASK ;
 unsigned long MXC_CCM_PDR1_FIRI_PRE_PODF_OFFSET ;
 int __calc_pre_post_dividers (unsigned long,unsigned long*,unsigned long*) ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static int firi_set_rate(struct clk *clk, unsigned long rate)
{
 u32 reg, div, pre, post, parent = clk_get_rate(clk->parent);

 div = parent / rate;

 if ((parent / div) != rate)
  return -EINVAL;

 __calc_pre_post_dividers(div, &pre, &post);


 reg = __raw_readl(MXC_CCM_PDR1) &
     ~(MXC_CCM_PDR1_FIRI_PODF_MASK | MXC_CCM_PDR1_FIRI_PRE_PODF_MASK);
 reg |= (pre - 1) << MXC_CCM_PDR1_FIRI_PRE_PODF_OFFSET;
 reg |= (post - 1) << MXC_CCM_PDR1_FIRI_PODF_OFFSET;
 __raw_writel(reg, MXC_CCM_PDR1);

 return 0;
}
