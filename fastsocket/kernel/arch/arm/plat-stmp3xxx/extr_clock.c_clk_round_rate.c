
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* ops; } ;
struct TYPE_2__ {long (* round_rate ) (struct clk*,unsigned long) ;} ;


 int clk_good (struct clk*) ;
 long stub1 (struct clk*,unsigned long) ;
 scalar_t__ unlikely (int) ;

long clk_round_rate(struct clk *clk, unsigned long rate)
{
 if (unlikely(!clk_good(clk)))
  return 0;

 if (clk->ops->round_rate)
  return clk->ops->round_rate(clk, rate);

 return 0;
}
