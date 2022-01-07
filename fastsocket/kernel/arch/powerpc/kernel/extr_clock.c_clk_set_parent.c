
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {int dummy; } ;
struct TYPE_2__ {int (* clk_set_parent ) (struct clk*,struct clk*) ;} ;


 int ENOSYS ;
 TYPE_1__ clk_functions ;
 int stub1 (struct clk*,struct clk*) ;

int clk_set_parent(struct clk *clk, struct clk *parent)
{
 if (clk_functions.clk_set_parent)
  return clk_functions.clk_set_parent(clk, parent);
 return -ENOSYS;
}
