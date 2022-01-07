
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int enable_bit; unsigned long rate; int enable_reg; } ;


 int EINVAL ;
 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;

__attribute__((used)) static int omap1_set_uart_rate(struct clk * clk, unsigned long rate)
{
 unsigned int val;

 val = __raw_readl(clk->enable_reg);
 if (rate == 12000000)
  val &= ~(1 << clk->enable_bit);
 else if (rate == 48000000)
  val |= (1 << clk->enable_bit);
 else
  return -EINVAL;
 __raw_writel(val, clk->enable_reg);
 clk->rate = rate;

 return 0;
}
