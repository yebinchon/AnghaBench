
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {int dummy; } ;
struct TYPE_2__ {struct clk* (* clk_get_parent ) (struct clk*) ;} ;


 int ENOSYS ;
 struct clk* ERR_PTR (int ) ;
 TYPE_1__ clk_functions ;
 struct clk* stub1 (struct clk*) ;

struct clk *clk_get_parent(struct clk *clk)
{
 if (clk_functions.clk_get_parent)
  return clk_functions.clk_get_parent(clk);
 return ERR_PTR(-ENOSYS);
}
