
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk {int scale_shift; scalar_t__ busy_reg; int scale_reg; TYPE_1__* parent; } ;
struct TYPE_2__ {int rate; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int clk_is_busy (struct clk*) ;

__attribute__((used)) static int io_set_rate(struct clk *clk, u32 rate)
{
 u32 reg_frac, clkctrl_frac;
 int i, ret = 0, mask = 0x1f;

 clkctrl_frac = (clk->parent->rate * 18 + rate - 1) / rate;

 if (clkctrl_frac < 18 || clkctrl_frac > 35) {
  ret = -EINVAL;
  goto out;
 }

 reg_frac = __raw_readl(clk->scale_reg);
 reg_frac &= ~(mask << clk->scale_shift);
 __raw_writel(reg_frac | (clkctrl_frac << clk->scale_shift),
    clk->scale_reg);
 if (clk->busy_reg) {
  for (i = 10000; i; i--)
   if (!clk_is_busy(clk))
    break;
  if (!i)
   ret = -ETIMEDOUT;
  else
   ret = 0;
 }
out:
 return ret;
}
