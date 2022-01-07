
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* disable ) (struct clk*) ;} ;


 int stub1 (struct clk*) ;

__attribute__((used)) static void _omap2_clk_disable(struct clk *clk)
{
 clk->ops->disable(clk);
}
