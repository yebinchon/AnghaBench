
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {int dummy; } ;
struct TYPE_2__ {int (* clk_disable ) (struct clk*) ;} ;


 TYPE_1__ clk_functions ;
 int stub1 (struct clk*) ;

void clk_disable(struct clk *clk)
{
 if (clk_functions.clk_disable)
  clk_functions.clk_disable(clk);
}
