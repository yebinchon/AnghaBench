
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int id; int parent; } ;


 int CCM_PCDR1 ;
 int EINVAL ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static int set_rate_per(struct clk *clk, unsigned long rate)
{
 u32 reg;
 u32 div;
 unsigned long parent_rate;

 parent_rate = clk_get_rate(clk->parent);

 if (clk->id < 0 || clk->id > 3)
  return -EINVAL;

 div = parent_rate / rate;
 if (div > 64 || div < 1 || ((parent_rate / div) != rate))
  return -EINVAL;
 div--;

 reg = __raw_readl(CCM_PCDR1) & ~(0x3f << (clk->id << 3));
 reg |= div << (clk->id << 3);
 __raw_writel(reg, CCM_PCDR1);

 return 0;
}
