
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {int dummy; } ;
struct TYPE_2__ {unsigned long (* clk_get_rate ) (struct clk*) ;} ;


 TYPE_1__ clk_functions ;
 unsigned long stub1 (struct clk*) ;

unsigned long clk_get_rate(struct clk *clk)
{
 if (clk_functions.clk_get_rate)
  return clk_functions.clk_get_rate(clk);
 return 0;
}
