
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {int dummy; } ;
struct TYPE_2__ {long (* clk_round_rate ) (struct clk*,unsigned long) ;} ;


 long ENOSYS ;
 TYPE_1__ clk_functions ;
 long stub1 (struct clk*,unsigned long) ;

long clk_round_rate(struct clk *clk, unsigned long rate)
{
 if (clk_functions.clk_round_rate)
  return clk_functions.clk_round_rate(clk, rate);
 return -ENOSYS;
}
