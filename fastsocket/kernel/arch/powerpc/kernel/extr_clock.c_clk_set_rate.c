
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {int dummy; } ;
struct TYPE_2__ {int (* clk_set_rate ) (struct clk*,unsigned long) ;} ;


 int ENOSYS ;
 TYPE_1__ clk_functions ;
 int stub1 (struct clk*,unsigned long) ;

int clk_set_rate(struct clk *clk, unsigned long rate)
{
 if (clk_functions.clk_set_rate)
  return clk_functions.clk_set_rate(clk, rate);
 return -ENOSYS;
}
