
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {long rate; } ;


 long EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;

long clk_round_rate(struct clk *clk, unsigned long rate)
{
 if (clk == ((void*)0) || IS_ERR(clk))
  return -EINVAL;

 return clk->rate;
}
