
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {int const enable_shift; long rate; int const scale_shift; scalar_t__ scale_reg; scalar_t__ enable_reg; TYPE_1__* parent; } ;
struct TYPE_2__ {long rate; } ;


 int const __raw_readl (scalar_t__) ;

__attribute__((used)) static long per_get_rate(struct clk *clk)
{
 long rate = clk->parent->rate;
 long div;
 const int mask = 0xff;

 if (clk->enable_reg &&
   !(__raw_readl(clk->enable_reg) & clk->enable_shift))
  clk->rate = 0;
 else {
  div = (__raw_readl(clk->scale_reg) >> clk->scale_shift) & mask;
  if (div)
   rate /= div;
  clk->rate = rate;
 }

 return clk->rate;
}
