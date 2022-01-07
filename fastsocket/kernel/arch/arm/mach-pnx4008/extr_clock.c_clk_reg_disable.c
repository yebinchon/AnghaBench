
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int enable_shift; scalar_t__ enable_reg; } ;


 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;

__attribute__((used)) static inline void clk_reg_disable(struct clk *clk)
{
 if (clk->enable_reg)
  __raw_writel(__raw_readl(clk->enable_reg) &
        ~(1 << clk->enable_shift), clk->enable_reg);
}
