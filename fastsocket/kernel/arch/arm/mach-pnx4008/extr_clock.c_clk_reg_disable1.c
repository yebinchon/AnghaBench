
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int enable_shift1; scalar_t__ enable_reg1; } ;


 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;

__attribute__((used)) static inline void clk_reg_disable1(struct clk *clk)
{
 if (clk->enable_reg1)
  __raw_writel(__raw_readl(clk->enable_reg1) &
        ~(1 << clk->enable_shift1), clk->enable_reg1);
}
