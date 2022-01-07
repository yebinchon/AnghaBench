
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {int const scale_shift; long rate; scalar_t__ scale_reg; TYPE_1__* parent; } ;
struct TYPE_2__ {long rate; } ;


 int const BM_CLKCTRL_FRAC_PIXFRAC ;
 int const BP_CLKCTRL_FRAC_PIXFRAC ;
 scalar_t__ HW_CLKCTRL_FRAC ;
 scalar_t__ REGS_CLKCTRL_BASE ;
 int const __raw_readl (scalar_t__) ;

__attribute__((used)) static long lcdif_get_rate(struct clk *clk)
{
 long rate = clk->parent->rate;
 long div;
 const int mask = 0xff;

 div = (__raw_readl(clk->scale_reg) >> clk->scale_shift) & mask;
 if (div) {
  rate /= div;
  div = (__raw_readl(REGS_CLKCTRL_BASE + HW_CLKCTRL_FRAC) &
   BM_CLKCTRL_FRAC_PIXFRAC) >> BP_CLKCTRL_FRAC_PIXFRAC;
  rate /= div;
 }
 clk->rate = rate;

 return rate;
}
