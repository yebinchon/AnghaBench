
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int (* set_rate ) (struct clk*,unsigned long) ;} ;


 int EINVAL ;
 int stub1 (struct clk*,unsigned long) ;

int clk_set_rate(struct clk *clk, unsigned long rate)
{
 if (clk->set_rate)
  return clk->set_rate(clk, rate);

 return -EINVAL;
}
