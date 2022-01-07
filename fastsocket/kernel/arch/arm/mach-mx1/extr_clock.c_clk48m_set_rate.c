
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 int CCM_CSCR ;
 unsigned int CCM_CSCR_USB_MASK ;
 unsigned int CCM_CSCR_USB_OFFSET ;
 int EINVAL ;
 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static int clk48m_set_rate(struct clk *clk, unsigned long rate)
{
 unsigned int div;
 unsigned int reg;
 unsigned long parent_rate;

 parent_rate = clk_get_rate(clk->parent);

 div = parent_rate / rate;

 if (div > 8 || div < 1 || ((parent_rate / div) != rate))
  return -EINVAL;

 div--;

 reg = __raw_readl(CCM_CSCR);
 reg &= ~CCM_CSCR_USB_MASK;
 reg |= div << CCM_CSCR_USB_OFFSET;
 __raw_writel(reg, CCM_CSCR);

 return 0;
}
