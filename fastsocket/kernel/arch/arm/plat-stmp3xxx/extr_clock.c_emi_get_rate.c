
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {int scale_shift; long rate; scalar_t__ scale_reg; TYPE_1__* parent; } ;
struct TYPE_2__ {int rate; } ;


 scalar_t__ HW_CLKCTRL_EMI ;
 scalar_t__ REGS_CLKCTRL_BASE ;
 int __raw_readl (scalar_t__) ;

__attribute__((used)) static long emi_get_rate(struct clk *clk)
{
 long rate = clk->parent->rate * 18;

 rate /= (__raw_readl(clk->scale_reg) >> clk->scale_shift) & 0x3f;
 rate /= __raw_readl(REGS_CLKCTRL_BASE + HW_CLKCTRL_EMI) & 0x3f;
 clk->rate = rate;

 return rate;
}
