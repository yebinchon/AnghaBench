
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 int CCM_PCDR ;
 unsigned int CCM_PCDR_PCLK3_MASK ;
 unsigned int CCM_PCDR_PCLK3_OFFSET ;
 int EINVAL ;
 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static int perclk3_set_rate(struct clk *clk, unsigned long rate)
{
 unsigned int div;
 unsigned int reg;
 unsigned long parent_rate;

 parent_rate = clk_get_rate(clk->parent);

 div = parent_rate / rate;

 if (div > 128 || div < 1 || ((parent_rate / div) != rate))
  return -EINVAL;

 div--;

 reg = __raw_readl(CCM_PCDR);
 reg &= ~CCM_PCDR_PCLK3_MASK;
 reg |= div << CCM_PCDR_PCLK3_OFFSET;
 __raw_writel(reg, CCM_PCDR);

 return 0;
}
