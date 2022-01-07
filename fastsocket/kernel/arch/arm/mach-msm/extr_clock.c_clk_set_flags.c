
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int id; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int pc_clk_set_flags (int ,unsigned long) ;

int clk_set_flags(struct clk *clk, unsigned long flags)
{
 if (clk == ((void*)0) || IS_ERR(clk))
  return -EINVAL;
 return pc_clk_set_flags(clk->id, flags);
}
