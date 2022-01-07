
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int flags; int id; } ;


 int CLKFLAG_USE_MIN_MAX_TO_SET ;
 int pc_clk_set_max_rate (int ,unsigned long) ;
 int pc_clk_set_min_rate (int ,unsigned long) ;
 int pc_clk_set_rate (int ,unsigned long) ;

int clk_set_rate(struct clk *clk, unsigned long rate)
{
 int ret;
 if (clk->flags & CLKFLAG_USE_MIN_MAX_TO_SET) {
  ret = pc_clk_set_max_rate(clk->id, rate);
  if (ret)
   return ret;
  return pc_clk_set_min_rate(clk->id, rate);
 }
 return pc_clk_set_rate(clk->id, rate);
}
