
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int * parent; } ;


 int CCM_PCDR0 ;
 int CCM_PCDR0_48MDIV_MASK ;
 int CCM_PCDR0_48MDIV_OFFSET ;
 int EINVAL ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 unsigned long clk_get_rate (int *) ;
 int * usb_clk ;

__attribute__((used)) static int _clk_clko_set_rate(struct clk *clk, unsigned long rate)
{
 u32 reg;
 u32 div;
 unsigned long parent_rate;

 parent_rate = clk_get_rate(clk->parent);

 div = parent_rate / rate;

 if (div > 8 || div < 1 || ((parent_rate / div) != rate))
  return -EINVAL;
 div--;

 reg = __raw_readl(CCM_PCDR0);

 if (clk->parent == &usb_clk[0]) {
  reg &= ~CCM_PCDR0_48MDIV_MASK;
  reg |= div << CCM_PCDR0_48MDIV_OFFSET;
 }
 __raw_writel(reg, CCM_PCDR0);

 return 0;
}
