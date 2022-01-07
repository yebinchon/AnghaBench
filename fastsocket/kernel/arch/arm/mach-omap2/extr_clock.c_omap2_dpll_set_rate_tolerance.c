
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* dpll_data; } ;
struct TYPE_2__ {unsigned int rate_tolerance; } ;


 int EINVAL ;

int omap2_dpll_set_rate_tolerance(struct clk *clk, unsigned int tolerance)
{
 if (!clk || !clk->dpll_data)
  return -EINVAL;

 clk->dpll_data->rate_tolerance = tolerance;

 return 0;
}
