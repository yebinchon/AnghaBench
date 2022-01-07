
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int flags; unsigned long rate; } ;


 int CLK_HAS_RATE ;

__attribute__((used)) static unsigned long mpc5121_clk_get_rate(struct clk *clk)
{
 if (clk->flags & CLK_HAS_RATE)
  return clk->rate;
 else
  return 0;
}
