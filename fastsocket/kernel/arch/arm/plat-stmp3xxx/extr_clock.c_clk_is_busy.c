
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int busy_bit; int busy_reg; } ;


 int __raw_readl (int ) ;

__attribute__((used)) static inline int clk_is_busy(struct clk *clk)
{
 return __raw_readl(clk->busy_reg) & (1 << clk->busy_bit);
}
